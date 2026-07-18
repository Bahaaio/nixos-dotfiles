{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    jetbrains.idea
    jetbrains.rider
    dbeaver-bin
    postman
  ];
}
