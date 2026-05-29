{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
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
