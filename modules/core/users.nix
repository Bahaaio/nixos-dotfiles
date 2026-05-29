{ ... }:

{
  users.users.bahaa = {
    isNormalUser = true;
    description = "Bahaa Mohamed";
    extraGroups = [
      "netowrkmanager"
      "wheel"
      "micled" # allow controlling mic-mute LED
    ];
  };
}
