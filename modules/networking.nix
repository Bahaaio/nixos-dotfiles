{ ... }:

{
  networking = {
    hostName = "nixos";
    wireless.iwd.enable = true;

    networkmanager = {
      enable = true;
      wifi.backend = "iwd";
    };
  };

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
  };

  networking.firewall = {
    enable = true;

    # Allow LocalSend
    allowedTCPPorts = [ 53317 ];
    allowedUDPPorts = [ 53317 ];
  };
}
