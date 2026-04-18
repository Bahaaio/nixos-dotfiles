{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    wget
    curl
    vim
    ripgrep
    fd
    bat
    lsd
    fzf
    yazi
    tmux
    sesh
    lazygit
    lazydocker
    btop
    zip
    unzip
    trash-cli
    zoxide
    opencode
    bluetui
    impala
    jq
    gnupg
    gh
    playerctl
    brightnessctl
    stow

    neovim
    nil
    statix
    nixfmt
    lua-language-server
  ];
}
