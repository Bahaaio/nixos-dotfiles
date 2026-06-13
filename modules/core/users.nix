{ ... }:

{
  users.users.bahaa = {
    isNormalUser = true;
    description = "Bahaa Mohamed";
    extraGroups = [
      "netowrkmanager"
      "wheel"
      "libvirtd"
      "micled" # allow controlling mic-mute LED
    ];
  };
}
