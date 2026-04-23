{ pkgs, ... }:
{
  programs.dconf.profiles.user.databases = [
    {
      settings."org/gnome/desktop/interface" = {
        gtk-theme = "Adwaita-dark";
        color-scheme = "prefer-dark";
        icon-theme = "Adwaita";
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
  ];
}
