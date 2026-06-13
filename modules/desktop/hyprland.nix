{ pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    # hypr ecosystem
    hypridle
    hyprlock
    hyprpaper
    hyprsunset
    hyprpicker

    # wayland stuff
    waybar
    wttrbar
    wlogout
    wl-clipboard
    swayosd
    qt6.qtwayland

    # utils
    copyq
    dunst
    walker
    elephant

    # screenshots
    grim
    slurp
    satty
  ];
}
