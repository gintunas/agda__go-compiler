\documentclass{article}
\usepackage{agda}

\begin{document}

Example of text in latex that can be \textit{italic} or \textbf{bold}.

Or any other, which is supported by LaTeX.

\begin{code}[agda boolean and function]
module compilationTestsLatex where

open import Agda.Builtin.Bool

-- Agda boolean AND function:
and : Bool → Bool → Bool
and true true = true
and _ _ = false

\end{code}

\end{document}
