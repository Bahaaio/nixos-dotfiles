{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    jetbrains.idea
    jetbrains.rider
    postman
    # dbeaver-bin
  ];
}
