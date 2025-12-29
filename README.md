# unicode-keys

A package that allows users to easily enter unicode characters into their text using [AutoHotKey v2](https://www.autohotkey.com/).

## Features

- Press the `Pause` _n_ times to activate Worker _n_ level.
- Type text to match selected Worker, e.g. `Pause r` send `ρ`, but `Pause Pause r` send `√`.
- Text case in considered, e.g. `Pause d` send `δ`, but `Pause D` send `Δ`.
- The script will wait for up to 1 second for input after every keypress, but you can interrupt it at any time by pressing the `Esc` key.

## Usage

Using the binaries:

1. Download the latest binaries from the [releases](https://github.com/asiloisad/ahk-unicode-keys/releases) page.
2. Run the `unicode-keys_x86.exe` or `unicode-keys_x64.exe` binaries.

Using the script:

1. Make sure you have [AutoHotKey v2](https://www.autohotkey.com/) installed on your system.
2. Download the `script.ahk` from this repository.
3. Run the `script.ahk` script by double-clicking on it or using the `Run Script` option from the AutoHotKey application.

## Worker 1st level

Greek characters acc. [link](https://jblevins.org/log/greek):

-  `a`: `α` (_aka_ `\alpha`)
-  `b`: `β` (_aka_ `\beta`)
-  `g`: `γ` (_aka_ `\gamma`)
-  `G`: `Γ` (_aka_ `\Gamma`)
-  `d`: `δ` (_aka_ `\delta`)
-  `D`: `Δ` (_aka_ `\Delta`)
-  `e`: `ϵ` (_aka_ `\epsilon`)
- `\e`: `ε` (_aka_ `\varepsilon`)
-  `v`: `ε` (_aka_ `\varepsilon`)
-  `z`: `ζ` (_aka_ `\zeta`)
-  `h`: `η` (_aka_ `\eta`)
-  `q`: `θ` (_aka_ `\theta`)
- `\q`: `ϑ` (_aka_ `\vartheta`)
-  `Q`: `Θ` (_aka_ `\Theta`)
-  `i`: `ι` (_aka_ `\iota`)
-  `k`: `κ` (_aka_ `\kappa`)
- `\k`: `ϰ` (_aka_ `\varkappa`)
-  `l`: `λ` (_aka_ `\lambda`)
-  `L`: `Λ` (_aka_ `\Lambda`)
-  `m`: `μ` (_aka_ `\mu`)
-  `n`: `ν` (_aka_ `\nu`)
-  `x`: `ξ` (_aka_ `\xi`)
-  `X`: `Ξ` (_aka_ `\Xi`)
-  `p`: `π` (_aka_ `\pi`)
- `\p`: `ϖ` (_aka_ `\varpi`)
-  `P`: `Π` (_aka_ `\Pi`)
-  `r`: `ρ` (_aka_ `\rho`)
- `\r`: `ϱ` (_aka_ `\varrho`)
-  `s`: `σ` (_aka_ `\sigma`)
- `\s`: `ς` (_aka_ `\varsigma`)
-  `S`: `Σ` (_aka_ `\Sigma`)
-  `t`: `τ` (_aka_ `\tau`)
-  `u`: `υ` (_aka_ `\upsilon`)
-  `U`: `Υ` (_aka_ `\Upsilon`)
-  `f`: `ϕ` (_aka_ `\phi`)
- `\f`: `φ` (_aka_ `\varphi`)
-  `j`: `φ` (_aka_ `\varphi`)
-  `F`: `Φ` (_aka_ `\Phi`)
-  `c`: `χ` (_aka_ `\chi`)
-  `y`: `ψ` (_aka_ `\psi`)
-  `Y`: `Ψ` (_aka_ `\Psi`)
-  `w`: `ω` (_aka_ `\omega`)
-  `W`: `Ω` (_aka_ `\Omega`)

Tasklist bullets acc. [link](https://github.com/bacadra/pulsar-language-tasklist):

-  `/`: `▷`
-  `*`: `☐`
-  `+`: `✔`
-  `-`: `✘`
-  `.`: `•`

Emojis:

- `:(`: `🙁`
- `:)`: `🙂`
- `:G`: `😎`
- `:D`: `😂`
- `:T`: `🤔`
- `:L`: `👍`
- `:B`: `🍺`

## Worker 2nd level

Math symbols acc. [link](https://ctan.org/pkg/amsmath):

- `v`: `÷` (_aka_ `\div`)
- `e`: `≡` (_aka_ `\equiv`)
- `i`: `∞` (_aka_ `\infty`)
- `l`: `∫` (_aka_ `\int`)
- `n`: `∇` (_aka_ `\nabla`)
- `p`: `∏` (_aka_ `\prod`)
- `r`: `√` (_aka_ `\root`)
- `s`: `∑` (_aka_ `\sum`)
- `=`: `≈` (_aka_ `\aprox`)
- `o`: `°` (_aka_ `\degree`)
- `+`: `±` (_aka_ `\pm`)
- `'`: `ʾ`

Time & date tags acc. [link](https://www.autohotkey.com/docs/v2/lib/FormatTime.htm):

- `df`: `yyyy/MM/dd`
- `dt`: `yyyyMMdd`
- `d[`: `[yyyyMMdd]`
- `tf`: `yyyy/MM/dd HH:mm:ss`
- `tt`: `yyyyMMddHHmmss`
- `t[`: `[yyyyMMddHHmmss]`

# Contributing

Got ideas to make this package better, found a bug, or want to help add new features? Just drop your thoughts on GitHub — any feedback’s welcome!
