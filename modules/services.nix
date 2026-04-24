{ pkgs, ... }:
{
  programs.dconf.enable = true;
  security.polkit.enable = true; # Optional automount helper

  services = {
    dbus.enable = true;
    gvfs.enable = true; # Mount, trash, network drives
    udisks2.enable = true; # USB drives, disks
    devmon.enable = true;
    gnome.gnome-keyring.enable = true; # Keyring for storing secrets
    vnstat.enable = true; # Network traffic monitor
  };

  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-gnome3;
  };

  systemd.user.services.polkit-gnome-authentication-agent-1 = {
    description = "polkit-gnome-authentication-agent-1";

    wantedBy = [ "graphical-session.target" ];
    wants = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];

    serviceConfig = {
      Type = "simple";
      ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
      Restart = "on-failure";
      RestartSec = 1;
      TimeoutStopSec = 10;
    };
  };

  environment.systemPackages = with pkgs; [
    polkit_gnome
    gnome.gvfs
  ];

  # create `micled` group and grant write access to the mic-mute LED sysfs node
  # so non-root users in this group can toggle the hardware mic indicator
  users.groups.micled = { };
  services.udev.extraRules = ''
    SUBSYSTEM=="leds", KERNEL=="platform::micmute", MODE="0664", GROUP="micled"
  '';
}
