{ inputs, pkgs, ... }:

{
  programs = {
    localsend.enable = true;

    nautilus-open-any-terminal = {
      enable = true;
      terminal = "wezterm";
    };
  };

  environment.systemPackages = with pkgs; [
    wezterm
    kitty
    nautilus

    gnome-text-editor
    gnome-weather
    gnome-calculator

    proton-vpn
    ticktick
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
