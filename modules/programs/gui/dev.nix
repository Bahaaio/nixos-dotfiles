{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    jetbrains.idea
    dbeaver-bin
    postman
  ];
}
