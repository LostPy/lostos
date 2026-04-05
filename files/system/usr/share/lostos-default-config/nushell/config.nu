# env config
# To add entries to PATH (on Windows you might use Path), you can use the following pattern:
$env.PATH = ($env.PATH | split row (char esep)
    | prepend '/usr/share/homebrew/home/linuxbrew/.linuxbrew/bin'
    | prepend $'($env.HOME)/.atuin/bin'
    | prepend $'($env.HOME)/.cargo/bin'
    | prepend '/root/.cargo/bin'
    | prepend $'($env.HOME)/.local/bin')

# init shell tools
atuin init nu | save -f ~/.atuin.nu
starship init nu | save -f ~/.starship.nu
zoxide init nushell | save -f ~/.zoxide.nu

# edit nu config
$env.config.buffer_editor = "hx"

# Alias definitions
alias cargob = cargo-binstall

# load external tool config
source ~/.atuin.nu
source ~/.starship.nu
source ~/.zoxide.nu
