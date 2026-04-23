{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    delta
    wget
    curl
    vim
    tree
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
    gdu
    fastfetch
    tokei
    gh
    playerctl
    brightnessctl
    wl-clipboard
    stow
    vnstat

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
    p7zip
  ];
}
