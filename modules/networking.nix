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

  networking.firewall = {
    enable = true;

    # Allow LocalSend
    allowedTCPPorts = [ 53317 ];
    allowedUDPPorts = [ 53317 ];
  };
}
