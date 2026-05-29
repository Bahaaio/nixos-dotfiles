{ pkgs, ... }:

{
  environment.sessionVariables = {
    XCURSOR_THEME = "Bibata-Modern-Classic";
    XCURSOR_SIZE = "22";
  };

  programs.dconf.profiles.user.databases = [
    {
      settings."org/gnome/desktop/interface" = {
        gtk-theme = "Adwaita-dark";
        color-scheme = "prefer-dark";
        icon-theme = "Adwaita";
        cursor-theme = "Bibata-Modern-Classic";
        cursor-size = "22";
      };
    }
  ];

  qt = {
    enable = true;
    platformTheme = "gnome";
    style = "adwaita-dark";
  };

  environment.systemPackages = with pkgs; [
    adw-gtk3
    adwaita-qt
    adwaita-icon-theme
    gnome-themes-extra
    bibata-cursors
  ];
}
