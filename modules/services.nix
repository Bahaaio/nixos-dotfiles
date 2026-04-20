{ pkgs, ... }:
{
  programs.dconf.enable = true;
  security.polkit.enable = true; # Optional automount helper

  services = {
    dbus.enable = true;
    gvfs.enable = true; # Mount, trash, network drives
    udisks2.enable = true; # USB drives, disks
    devmon.enable = true;
  };

  environment.systemPackages = with pkgs; [
    polkit_gnome
  ];
}
