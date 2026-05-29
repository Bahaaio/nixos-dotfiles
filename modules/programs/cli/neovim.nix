{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    tree-sitter
    statix
    nixfmt
    lua5_1
    luarocks
    ueberzugpp
  ];
}
