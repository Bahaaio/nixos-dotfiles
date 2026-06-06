{ pkgs, ... }:

{
  programs = {
    gsr = {
      enable = true;
      ui.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    pavucontrol
    mpv
    loupe
    celluloid
  ];
}
