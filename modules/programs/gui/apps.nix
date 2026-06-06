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
    nautilus

    gnome-text-editor
    gnome-weather
    gnome-calculator

    proton-vpn
    proton-pass

    ticktick
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
