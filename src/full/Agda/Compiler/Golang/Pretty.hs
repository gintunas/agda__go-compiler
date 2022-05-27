module Agda.Compiler.Golang.Pretty where

import qualified Agda.Utils.Haskell.Syntax as HS
import Data.List ( intercalate )
import qualified Agda.Compiler.Golang.Syntax as Go
import qualified Text.PrettyPrint as T
import Agda.Utils.Hash
import Agda.Utils.Impossible
import Agda.Syntax.Common ( Nat )
import Agda.Compiler.MAlonzo.Encode
import Agda.Utils.Pretty
import Data.Char ( chr, ord )

prettyPrintGo :: Pretty a => a -> String
prettyPrintGo = show . pretty

instance Pretty Go.Module where
  pretty (Go.Module (Go.GlobalId m) imports exports) =
    cat [ "package" <+> pretty (Go.GlobalId (tail m))
    , cat $ map pretty imports
    , cat $ map pretty exports
    ]

instance Pretty Go.Exp where
  prettyPrec pr e =
    case e of
      -- no undefined because it does not exist in golang
      Go.Null -> text "nil"
      Go.String s -> "\"" <+> (text $ show s) <+> "\""
      Go.Char c -> "\'" <+> (text $ show c) <+> "\'"
      Go.SimpleInteger n -> text $ show n
      Go.Integer n -> (text "big.NewInt") <+> (T.parens $ text $ show n)
      Go.Double d -> (text "big.NewFloat") <+> (T.parens $ text $ show d)
      -- no lambda because it is converted to function 

      -- It does nothing now
      -- Go.GoBool id -> "type" <+> pretty id <+> "= bool"
      Go.GoVar v -> textAndGetVarName v
      Go.GoLet varName expBody boundedExp -> "\n" <+> text varName <+> ":=" <+> pretty expBody <+> pretty boundedExp
      
      Go.GoInterface id -> "type" <+> pretty id <+> "= any"
      Go.GoFunction signatures (Go.GoSwitch a b) -> (hsep $ map pretty signatures) <+> (pretty (Go.GoSwitch a b)) <+> (hsep $ replicate (length signatures) T.rbrace)
      Go.GoFunction signatures body -> (hsep $ map pretty signatures) <+> (pretty body) <+> (hsep $ replicate (length signatures) T.rbrace)
      Go.GoIIFE exp -> pretty exp <> "()"

      Go.GoTrue id -> "const" <+> pretty id <+> "= true"
      Go.GoFalse id -> "const" <+> pretty id <+> "= false"
      Go.GoArray id xs -> "type" <+> pretty id <+> "=" <+> (text $ show xs)

      Go.GoStruct id elems -> "type" <+> pretty id <+> "struct" <+> (T.braces (hsep $ map pretty elems))
      Go.GoStructElement localId typeId -> "_" <+> pretty localId <+> pretty typeId <+> T.semi
      Go.GoCreateStruct name params -> (pretty name) <+> T.lbrace <+> (joinStructParams (map pretty params)) <+> T.rbrace

      Go.GoIf a b c -> "if (" <+> (pretty a) <+> ") {" <+> (pretty b) <+> "} else {" <+> pretty c <+> T.rbrace
      -- OLD IMPLEMENTATION
      -- Go.GoSwitch v cases -> "switch type_" <+> (pretty v) <+> (text "  := ") <+> (pretty v) <+> (text ".(type) {\n") <+> (hsep $ map pretty cases) <+> "\ndefault:\n_ = type_"<+> (pretty v) <+> ";\n panic(\"Unreachable\");\n}"
      Go.GoSwitch v cases -> "\nswitch" <+> (pretty v) <+> T.lbrace <+> (hsep $ map pretty cases) <+> "\ndefault" <+> T.colon <+> "panic(\"Unreachable\")}"
      Go.GoCase name switchVar paramsStart paramCount exps -> "\ncase" <+> (pretty name) <+> T.colon <+> (hsep $ map (createCaseParam paramsStart switchVar) (createCaseList paramCount)) <+> (hsep $ map pretty exps)

      Go.GoMethodCall name [] -> (pretty name) <+> "()"
      Go.GoMethodCall name params -> (pretty name) <+> (hsep $ map pretty params)
      Go.GoMethodCallParam exp Go.EmptyType -> T.parens (pretty exp)
      Go.GoMethodCallParam exp typeId -> T.lparen <+> (pretty exp) <+> ".(" <+> pretty typeId <+> "))"
      -- OLD IMPLEMENTATION
      -- Go.ReturnExpression exp t -> "return helper.Id(" <+> (pretty exp) <+> ").(" <+> pretty t <+> T.rparen
      Go.ReturnExpression exp t -> "return" <+> (pretty exp)

      Go.BinOp a b c -> (pretty a) <+> T.lparen <+> (T.parens (pretty b)) <+> T.comma <+> (T.parens (pretty c)) <+> T.rparen
      Go.Const s -> text s
      _ -> text ""

joinStructParams :: [Doc] -> Doc
joinStructParams [] = T.empty
joinStructParams [x] = x <+> (joinStructParams [])
joinStructParams (x:xs) = x <+> T.comma <+> (joinStructParams xs)

createCaseParam :: Nat -> Nat -> Nat -> Doc
createCaseParam paramStart switchVar paramId = (textAndGetVarName (paramStart + paramId)) <+> ":= type_" <+> (textAndGetVarName switchVar) <+> "." <+> (textAndGetVarName (paramId - 1)) <+> "; _ =" <+> (textAndGetVarName (paramStart + paramId))<+> ";"

instance Pretty Go.MemberId where
  pretty (Go.MemberId  s) = text s
  pretty (Go.MemberIndex i c) = text ""

createCaseList :: Nat -> [Nat]
createCaseList 0 = []
createCaseList n = [1..n]

getVarName :: Nat -> String
getVarName n = [chr ((ord 'A') + n)]

textAndGetVarName :: Nat -> Doc
textAndGetVarName n = text $ getVarName n

instance Pretty Go.GlobalId where
  pretty (Go.GlobalId m) = text $ intercalate "_" m

instance Pretty Go.LocalId where
  pretty (Go.LocalId n) = text $ show n

instance Pretty Go.GoImports where
  pretty (Go.GoImportDeclarations declarations) = "\nimport (\n" <+> (hsep (map (text . importString) declarations)) <+> T.rparen
  pretty Go.GoImportField = "type GoImportable bool"
  pretty (Go.GoImportUsage "big") = "const _ = big.Above"
  pretty (Go.GoImportUsage s) = "type _" <+> (text s) <+> ".GoImportable"

importString :: String -> String
importString s = "\"" ++ s ++ "\"\n"

instance Pretty Go.TypeId where
  pretty (Go.TypeId m) = text m
  pretty (Go.ConstructorType m n) = text m <+> text n <+> T.semi
  pretty (Go.GenericFunctionType m n) = T.lparen <+> text m <+> text n <+> T.rparen
  pretty (Go.FunctionType m n) = T.lparen <+> text m <+> text n <+> T.rparen
  pretty (Go.FunctionReturnElement m) = "func(" <+> text m <+> T.rparen
  pretty (Go.EmptyFunctionParameter) = "()"
  pretty (Go.EmptyType) = text ""
  pretty (Go.AnyType) = text "any"
  pretty (Go.PiType (Go.ConstructorType m1 n1) (Go.ConstructorType m2 n2)) = T.lparen <+> text m1 <+> "func(" <+> (text n1) <+> T.rparen <+> (text n2) <+> T.rparen
  pretty (Go.PiType (Go.GenericFunctionType m1 n1) (Go.GenericFunctionType m2 n2)) = T.lparen <+> text m1 <+> "func(" <+> (text n1) <+> T.rparen <+> (text n2) <+> T.rparen
  pretty _ = (text "utype")

instance Pretty Go.GoFunctionSignature where
  pretty (Go.OuterSignature name [] param returnElems returnType) = "\nfunc" <+> (pretty name) <+> (pretty param) <+> (hsep $ map pretty returnElems) <+> (pretty returnType) <+> T.lbrace
  pretty (Go.OuterSignature name genTypes param returnElems returnType) = "\nfunc" <+> (pretty name) <+> T.brackets (text ((intercalate ", " genTypes) ++ " any")) <+> (pretty param) <+> (hsep $ map pretty returnElems) <+> (pretty returnType) <+> T.lbrace
  pretty (Go.InnerSignature param returnElems returnType) = "\nreturn func" <+> (pretty param) <+> (hsep $ map pretty returnElems) <+> (pretty returnType) <+> T.lbrace
  pretty (Go.AnonymousSignature returnType) = "func()" <+> pretty returnType <+> T.lbrace