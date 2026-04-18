{ pkgs, ... }:

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

    yazi
    resvg
    poppler
    ffmpeg
    imagemagick
    _7zz
  ];
}
