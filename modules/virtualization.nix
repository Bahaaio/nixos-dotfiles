{ ... }:

{
  users.users.bahaa.extraGroups = [ "docker" ];

  virtualisation.docker = {
    enable = true;
    enableOnBoot = false;
  };
}
