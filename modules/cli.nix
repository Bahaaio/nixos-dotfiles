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
    procps
    openssl
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
    nitch
    tokei
    gh
    playerctl
    brightnessctl
    wl-clipboard
    stow
    tesseract
    tty-clock

    neovim
    tree-sitter
    statix
    nixfmt
    lua5_1
    luarocks
    ueberzugpp

    yazi
    resvg
    poppler
    ffmpeg
    imagemagick
    p7zip
  ];
}
