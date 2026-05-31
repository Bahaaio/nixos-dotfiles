{ inputs, ... }:

{
  imports = [ inputs.silentSDDM.nixosModules.default ];

  programs.silentSDDM = {
    enable = true;
    theme = "default";
    profileIcons.bahaa = "/etc/avatar";
  };
}
