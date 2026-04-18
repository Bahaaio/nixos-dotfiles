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
    wl-clipboard
    stow

    neovim
    tree-sitter
    nil
    statix
    nixfmt
    lua
    luarocks
    lua-language-server

    yazi
    resvg
    poppler
    ffmpeg
    imagemagick
    _7zz
  ];
}
