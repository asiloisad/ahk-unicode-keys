#Requires AutoHotkey v2.0
#SingleInstance Force

; Global input hook
IH := InputHook("C", "{Esc}")
IH.OnEnd := OnEnd

; Worker current level
STATE := 0

; Worker max level
PRMAX := 2

; Start collection of input
Pause::
  {
    if (STATE<PRMAX) {
      Global STATE += 1
      IH.OnChar := Worker_%STATE%
      IH.Timeout := 1
      IH.Start()
    }
  }

; Clean global State on terminate
OnEnd(ih) {
  Global STATE := 0
}

; Send text in RAW form and stop input collection
TextRaw(ih, text)
{
  ih.stop()
  Send("{Raw}" text)
}

; Check if input match any case
Worker_1(ih, char)
{
  ih.Timeout := 1
  switch ih.Input, "On"
  {
    ; Greek characters
    ; https://jblevins.org/log/greek
    case  "a": TextRaw(ih, "α") ; \alpha
    case  "b": TextRaw(ih, "β") ; \beta
    case  "g": TextRaw(ih, "γ") ; \gamma
    case  "G": TextRaw(ih, "Γ") ; \Gamma
    case  "d": TextRaw(ih, "δ") ; \delta
    case  "D": TextRaw(ih, "Δ") ; \Delta
    case  "e": TextRaw(ih, "ϵ") ; \epsilon
    case "\e": TextRaw(ih, "ε") ; \varepsilon
    case  "v": TextRaw(ih, "ε") ; \varepsilon
    case  "z": TextRaw(ih, "ζ") ; \zeta
    case  "h": TextRaw(ih, "η") ; \eta
    case  "q": TextRaw(ih, "θ") ; \theta
    case "\q": TextRaw(ih, "ϑ") ; \vartheta
    case  "Q": TextRaw(ih, "Θ") ; \Theta
    case  "i": TextRaw(ih, "ι") ; \iota
    case  "k": TextRaw(ih, "κ") ; \kappa
    case "\k": TextRaw(ih, "ϰ") ; \varkappa
    case  "l": TextRaw(ih, "λ") ; \lambda
    case  "L": TextRaw(ih, "Λ") ; \Lambda
    case  "m": TextRaw(ih, "μ") ; \mu
    case  "n": TextRaw(ih, "ν") ; \nu
    case  "x": TextRaw(ih, "ξ") ; \xi
    case  "X": TextRaw(ih, "Ξ") ; \Xi
    case  "p": TextRaw(ih, "π") ; \pi
    case "\p": TextRaw(ih, "ϖ") ; \varpi
    case  "P": TextRaw(ih, "Π") ; \Pi
    case  "r": TextRaw(ih, "ρ") ; \rho
    case "\r": TextRaw(ih, "ϱ") ; \varrho
    case  "s": TextRaw(ih, "σ") ; \sigma
    case "\s": TextRaw(ih, "ς") ; \varsigma
    case  "S": TextRaw(ih, "Σ") ; \Sigma
    case  "t": TextRaw(ih, "τ") ; \tau
    case  "u": TextRaw(ih, "υ") ; \upsilon
    case  "U": TextRaw(ih, "Υ") ; \Upsilon
    case  "f": TextRaw(ih, "ϕ") ; \phi
    case "\f": TextRaw(ih, "φ") ; \varphi
    case  "j": TextRaw(ih, "φ") ; \varphi
    case  "F": TextRaw(ih, "Φ") ; \Phi
    case  "c": TextRaw(ih, "χ") ; \chi
    case  "y": TextRaw(ih, "ψ") ; \psi
    case  "Y": TextRaw(ih, "Ψ") ; \Psi
    case  "w": TextRaw(ih, "ω") ; \omega
    case  "W": TextRaw(ih, "Ω") ; \Omega

    ; Tasklist bullets
    ; https://github.com/bacadra/pulsar-language-tasklist
    case  "/": TextRaw(ih, "▷")
    case  "*": TextRaw(ih, "☐")
    case  "+": TextRaw(ih, "✔")
    case  "-": TextRaw(ih, "✘")
    case  ".": TextRaw(ih, "•")

    ; Emojis
    case ":(": TextRaw(ih, "🙁")
    case ":)": TextRaw(ih, "🙂")
    case ":G": TextRaw(ih, "😎")
    case ":D": TextRaw(ih, "😂")
    case ":T": TextRaw(ih, "🤔")
    case ":L": TextRaw(ih, "👍")
    case ":B": TextRaw(ih, "🍺")
  }
}

; Check if input match any case
Worker_2(ih, char)
{
  ih.Timeout := 1
  switch ih.Input, "On"
  {
    ; Math symbols
    case "v": TextRaw(ih, "÷") ; \div
    case "e": TextRaw(ih, "≡") ; \equiv
    case "i": TextRaw(ih, "∞") ; \infty
    case "l": TextRaw(ih, "∫") ; \int
    case "n": TextRaw(ih, "∇") ; \nabla
    case "p": TextRaw(ih, "∏") ; \prod
    case "r": TextRaw(ih, "√") ; \root
    case "s": TextRaw(ih, "∑") ; \sum
    case "=": TextRaw(ih, "≈") ; \aprox
    case "o": TextRaw(ih, "°") ; \degree
    case "+": TextRaw(ih, "±") ; \pm
    case "'": TextRaw(ih, "ʾ") ; apostrophe

    ; Time & date tags
    case "df" : TextRaw(ih, FormatTime(,"yyyy/MM/dd"))
    case "dt" : TextRaw(ih, FormatTime(,"yyyyMMdd"))
    case "d[" : TextRaw(ih, '[' FormatTime(,"yyyyMMdd") ']')
    case "tf" : TextRaw(ih, FormatTime(,"yyyy/MM/dd HH:mm:ss"))
    case "tt" : TextRaw(ih, FormatTime(,"yyyyMMddHHmmss"))
    case "t[" : TextRaw(ih, '[' FormatTime(,"yyyyMMddHHmmss") ']')
  }
}
