{ pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "us,ara";
        options = "caps:swapescape,grp:ctrl_alt_toggle";
      };

      windowManager.i3 = {
        enable = true;
        extraPackages = [ ];
      };
    };

    libinput = {
      enable = true;
      touchpad = {
        disableWhileTyping = true;
        naturalScrolling = true;
      };
    };

    geoclue2.enable = true;
  };

  environment.systemPackages = with pkgs; [
    picom
    polybarFull
    xss-lock
    betterlockscreen
    dunst
    libnotify
    feh
    flameshot
    copyq
    rofi
    ulauncher

    # utils
    xclip
    xinput
    wmctrl
    xsensors
    numlockx

    gnome-calendar
    redshift
  ];
}
