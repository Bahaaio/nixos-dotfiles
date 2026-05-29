{ pkgs, ... }:

{
  users.users.bahaa.extraGroups = [ "docker" ];

  virtualisation.docker = {
    enable = true;
    enableOnBoot = false;
  };

  environment.systemPackages = with pkgs; [
    docker-compose
  ];
}
