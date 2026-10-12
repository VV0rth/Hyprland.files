function un --description 'Update system packages and Flatpaks'
    set -l title (set_color --bold brcyan)
    set -l ok (set_color --bold brgreen)
    set -l warn (set_color --bold bryellow)
    set -l err (set_color --bold brred)
    set -l dim (set_color brblack)
    set -l reset (set_color normal)

    printf "\n%s╭──────────────────────────────────────────────╮%s\n" $title $reset
    printf "%s│%s  %s✦ System update%s                             %s│%s\n" $title $reset $title $reset $title $reset
    printf "%s╰──────────────────────────────────────────────╯%s\n\n" $title $reset

    paru -Syu $argv
    or begin
        printf "\n%s⚠ System update failed.%s\n" $warn $reset
        read -l -P "Refresh Arch/CachyOS keyrings and retry? [y/N] " answer

        if contains -- (string lower -- $answer) y yes
            printf "\n%s⟳ Refreshing keyrings…%s\n\n" $warn $reset
            sudo pacman -Syy --needed archlinux-keyring cachyos-keyring
            or return 1

            printf "\n%s⟳ Retrying system update…%s\n\n" $warn $reset
            paru -Syu $argv
            or return 1
        else
            return 1
        end
    end
    printf "\n%s✓ System packages are current.%s\n" $ok $reset
    printf "%s────────────────────────────────────────────────%s" $dim $reset
    printf "\n%s✦ Flatpak update%s\n\n" $title $reset

    flatpak update
    or begin
        printf "\n%s✗ Flatpak update failed.%s\n" $err $reset
        return 1
    end

    printf "\n%s✓ Everything is up to date.%s\n\n" $ok $reset
end
