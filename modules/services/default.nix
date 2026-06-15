{ pkgs, ... }:

{
  imports = [
    ./sddm.nix
    ./audio.nix
    ./network.nix
    ./polkit-agent.nix
  ];

  programs.dconf.enable = true;
  security.polkit.enable = true;

  services = {
    dbus.enable = true;
    udisks2.enable = true; # disk and USB drive management
    gvfs.enable = true; # trash, network sharing, and MTP support
    gnome.gnome-keyring.enable = true; # keyring for storing secrets
    vnstat.enable = true; # network usage statistics
  };

  programs.gnupg.agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-gnome3;
  };

  # create `micled` group and grant write access to the mic-mute LED sysfs node
  # so non-root users in this group can toggle the hardware mic indicator
  users.groups.micled = { };
  services.udev.extraRules = ''
    ACTION=="change", SUBSYSTEM=="leds", KERNEL=="platform::micmute", GROUP="micled", MODE="0664", \
    RUN+="${pkgs.coreutils}/bin/chgrp micled /sys/class/leds/platform::micmute/brightness", \
    RUN+="${pkgs.coreutils}/bin/chmod 0664 /sys/class/leds/platform::micmute/brightness"
  '';
}
