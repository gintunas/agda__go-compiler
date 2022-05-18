module Agda.Compiler.GoLang.Syntax where

import Agda.Syntax.Common (Nat)
import Agda.Utils.List1 (List1, (<|), pattern (:|))
import qualified Agda.Utils.List1 as List1
import Data.Map (Map)
import Data.Semigroup (Semigroup)
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Text (Text)

-- * Modules

data Module = Module
  { modName :: GlobalId,
    imports :: [GoImports],
    exports :: [Exp]
  }
  deriving (Show)

data GoImports
  = GoImportDeclarations [String]
  | GoImportField
  | GoImportUsage String
  deriving (Eq, Ord, Show)

newtype LocalId = LocalId Nat
  deriving (Eq, Ord, Show)

newtype GlobalId = GlobalId [String]
  deriving (Eq, Ord, Show)

data MemberId
  = MemberId String
  | MemberIndex Int Comment
  deriving (Eq, Ord, Show)

-- * Expressions

data TypeId
  = TypeId String
  | ConstructorType String String
  | GenericFunctionType String String
  | FunctionType String String
  | FunctionReturnElement String
  | EmptyFunctionParameter
  | EmptyType
  | PiType TypeId TypeId
  deriving (Eq, Ord, Show)

data Exp
  = Self
  | Local LocalId
  | Global GlobalId
  | Undefined
  | Null
  | String Text
  | Char Char
  | Integer Integer
  | Double Double
  | Lambda Nat Exp

  | GoBool MemberId
  | GoVar Nat
  | GoLet String Exp Exp
  | GoInterface MemberId -- interface globalus name
  | GoFunction [GoFunctionSignature] Exp -- funkcijos vardas, parametras, return type, vidinė funkcija/switch statement.
  -- todo kaip išsiaiškint pilną return type (einam per visas vidines funkcijas?)
  
  | GoStruct MemberId [TypeId] -- struktūros name ir [Exp] yra struktūros elementai
  | GoStructElement LocalId TypeId -- struktūros elementas. name tiesiog integer + tipas
  | GoCreateStruct MemberId [Exp] -- struktūros sukurimas, paduodam struktūros name ir jo fields. todo ar fields bus [LocalId] ar [MemberId]
  | GoIf Exp Exp Exp
  | GoSwitch Exp [Exp] -- elementas, pagal kurio type darom switch ir sąrašas Go cases, paskutinis go case yra default su panic ir kintamojo priskirimas '_ = parameter'
  | GoCase MemberId Nat Nat Nat [Exp] -- pattern mathing pagal struct name ir return Exp, kur Exp gali būt metodo kvietimas, kintamojo gražinimas ar struct sukūrimas
  
  | GoMethodCall MemberId [Exp] --metodo name, kurį kviečiam ir parametrai. Parametrai gali būt method call, struct sukūrimas ar tiesiog parametras. Prettyfiinant kiekvienas Exp elementas eina į skliaustus.
  | GoMethodCallParam Exp TypeId
  | ReturnExpression Exp TypeId
  
  | BinOp Exp Exp Exp
  | Const String
  | PlainGo String -- ^ Arbitrary GO code.
  deriving (Show, Eq)

data GoFunctionSignature
  = OuterSignature MemberId [String] TypeId [TypeId] TypeId
  | -- name, parameter, return parameters (func...), final return type.
    InnerSignature TypeId [TypeId] TypeId
  -- parameter, return parameters (func...), final return type.
  deriving (Eq, Ord, Show)

newtype Comment = Comment String
  deriving (Show, Semigroup, Monoid)

instance Eq Comment where _ == _ = True

instance Ord Comment where compare _ _ = EQ

-- * Names

data Name
  = Ident String
  | Symbol String
  deriving (Show, Eq)

type GoQName = List1 MemberId
