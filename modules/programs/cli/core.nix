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
    jq
    zoxide
    fzf
    tmux
    sesh
    stow
    procps
    trash-cli

    # archives
    zip
    unzip
  ];
}
