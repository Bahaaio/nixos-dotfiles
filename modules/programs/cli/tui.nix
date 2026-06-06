{ inputs, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    inputs.pomo.packages.${pkgs.stdenv.hostPlatform.system}.default
    gdu
    btop
    impala
    bluetui
    lazygit
    lazydocker
    opencode

    nitch
    tty-clock
    fastfetch
  ];
}
