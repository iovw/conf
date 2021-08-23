#!/bin/sh
#
# Usage:
#
#    sh install.sh
#
# Environment variables: VERBOSE, CP, LN, MKDIR, RM, DIRNAME.
#
#    env VERBOSE=1 sh install.sh
#
# DO NOT EDIT THIS FILE
# 
# This file is generated by rcm(7) as:
#
#   rcup -B 0 -g
#
# To update it, re-run the above command.
#
: ${VERBOSE:=0}
: ${CP:=/bin/cp}
: ${LN:=/bin/ln}
: ${MKDIR:=/bin/mkdir}
: ${RM:=/bin/rm}
: ${DIRNAME:=/usr/bin/dirname}
verbose() {
  if [ "$VERBOSE" -gt 0 ]; then
    echo "$@"
  fi
}
handle_file_cp() {
  if [ -e "$2" ]; then
    printf "%s " "overwrite $2? [yN]"
    read overwrite
    case "$overwrite" in
      y)
        $RM -rf "$2"
        ;;
      *)
        echo "skipping $2"
        return
        ;;
    esac
  fi
  verbose "'$1' -> '$2'"
  $MKDIR -p "$($DIRNAME "$2")"
  $CP -R "$1" "$2"
}
handle_file_ln() {
  if [ -e "$2" ]; then
    printf "%s " "overwrite $2? [yN]"
    read overwrite
    case "$overwrite" in
      y)
        $RM -rf "$2"
        ;;
      *)
        echo "skipping $2"
        return
        ;;
    esac
  fi
  verbose "'$1' -> '$2'"
  $MKDIR -p "$($DIRNAME "$2")"
  $LN -sf "$1" "$2"
}
handle_file_ln "/home/aya/.dotfiles/ammonite/predef.sc" "/home/aya/.ammonite/predef.sc"
handle_file_ln "/home/aya/.dotfiles/bash_profile" "/home/aya/.bash_profile"
handle_file_ln "/home/aya/.dotfiles/bashrc" "/home/aya/.bashrc"
handle_file_ln "/home/aya/.dotfiles/bundle/config" "/home/aya/.bundle/config"
handle_file_ln "/home/aya/.dotfiles/cabal/config" "/home/aya/.cabal/config"
handle_file_ln "/home/aya/.dotfiles/cargo/config" "/home/aya/.cargo/config"
handle_file_ln "/home/aya/.dotfiles/config/alacritty/alacritty.yml" "/home/aya/.config/alacritty/alacritty.yml"
handle_file_ln "/home/aya/.dotfiles/config/aria2/aria2.conf" "/home/aya/.config/aria2/aria2.conf"
handle_file_ln "/home/aya/.dotfiles/config/fish" "/home/aya/.config/fish"
handle_file_ln "/home/aya/.dotfiles/config/kglobalshortcutsrc" "/home/aya/.config/kglobalshortcutsrc"
handle_file_ln "/home/aya/.dotfiles/config/khotkeysrc" "/home/aya/.config/khotkeysrc"
handle_file_ln "/home/aya/.dotfiles/config/kitty" "/home/aya/.config/kitty"
handle_file_ln "/home/aya/.dotfiles/config/krunnerrc" "/home/aya/.config/krunnerrc"
handle_file_ln "/home/aya/.dotfiles/config/kwinrc" "/home/aya/.config/kwinrc"
handle_file_ln "/home/aya/.dotfiles/config/neofetch/config.conf" "/home/aya/.config/neofetch/config.conf"
handle_file_ln "/home/aya/.dotfiles/config/pip/pip.conf" "/home/aya/.config/pip/pip.conf"
handle_file_ln "/home/aya/.dotfiles/config/plasma-localerc" "/home/aya/.config/plasma-localerc"
handle_file_ln "/home/aya/.dotfiles/config/sublime-text/Packages/User/Preferences.sublime-settings" "/home/aya/.config/sublime-text/Packages/User/Preferences.sublime-settings"
handle_file_ln "/home/aya/.dotfiles/config/xsettingsd/xsettingsd.conf" "/home/aya/.config/xsettingsd/xsettingsd.conf"
handle_file_ln "/home/aya/.dotfiles/env" "/home/aya/.env"
handle_file_ln "/home/aya/.dotfiles/gemrc" "/home/aya/.gemrc"
handle_file_ln "/home/aya/.dotfiles/ghc/ghci.conf" "/home/aya/.ghc/ghci.conf"
handle_file_ln "/home/aya/.dotfiles/ghcup/config.yaml" "/home/aya/.ghcup/config.yaml"
handle_file_ln "/home/aya/.dotfiles/gitconfig" "/home/aya/.gitconfig"
handle_file_ln "/home/aya/.dotfiles/gitignore_global" "/home/aya/.gitignore_global"
handle_file_ln "/home/aya/.dotfiles/gnupg/gpg-agent.conf" "/home/aya/.gnupg/gpg-agent.conf"
handle_file_ln "/home/aya/.dotfiles/gnupg/gpg.conf" "/home/aya/.gnupg/gpg.conf"
handle_file_ln "/home/aya/.dotfiles/gradle/gradle.properties" "/home/aya/.gradle/gradle.properties"
handle_file_ln "/home/aya/.dotfiles/hgrc" "/home/aya/.hgrc"
handle_file_ln "/home/aya/.dotfiles/install.sh" "/home/aya/.install.sh"
handle_file_ln "/home/aya/.dotfiles/irbrc" "/home/aya/.irbrc"
handle_file_ln "/home/aya/.dotfiles/mill/ammonite/predef.sc" "/home/aya/.mill/ammonite/predef.sc"
handle_file_ln "/home/aya/.dotfiles/npmrc" "/home/aya/.npmrc"
handle_file_ln "/home/aya/.dotfiles/nuget/NuGet/NuGet.Config" "/home/aya/.nuget/NuGet/NuGet.Config"
handle_file_ln "/home/aya/.dotfiles/ocamlinit" "/home/aya/.ocamlinit"
handle_file_ln "/home/aya/.dotfiles/opam/config" "/home/aya/.opam/config"
handle_file_ln "/home/aya/.dotfiles/psqlrc" "/home/aya/.psqlrc"
handle_file_ln "/home/aya/.dotfiles/rcrc" "/home/aya/.rcrc"
handle_file_ln "/home/aya/.dotfiles/rustup/settings.toml" "/home/aya/.rustup/settings.toml"
handle_file_ln "/home/aya/.dotfiles/spacemacs" "/home/aya/.spacemacs"
handle_file_ln "/home/aya/.dotfiles/ssh/config" "/home/aya/.ssh/config"
handle_file_ln "/home/aya/.dotfiles/stack/config.yaml" "/home/aya/.stack/config.yaml"
handle_file_ln "/home/aya/.dotfiles/tmux.conf" "/home/aya/.tmux.conf"
handle_file_ln "/home/aya/.dotfiles/xprofile" "/home/aya/.xprofile"
handle_file_ln "/home/aya/.dotfiles/zshrc" "/home/aya/.zshrc"