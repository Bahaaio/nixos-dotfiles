# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
  ];

  time.timeZone = "Africa/Cairo";

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vda";

  networking = {
    hostName = "nixos";
    wireless.iwd.enable = true;

    networkmanager = {
      enable = true;
      wifi.backend = "iwd";
    };
  };

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
  };

  users.users.bahaa = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "group"
      "docker"
    ];
    shell = pkgs.zsh;
    packages = [ ];
  };

  nixpkgs.config.allowUnfree = true;

  programs = {
    zsh.enable = true;

    hyprland = {
      enable = true;
      xwayland.enable = true;
      withUWSM = true;
    };

    firefox.enable = true;
  };

  virtualisation.docker = {
    enable = true;
    enableOnBoot = false;
  };

  services = {
    pipewire = {
      enable = true;
      pulse.enable = true;
      alsa.enable = true;
      jack.enable = true;
    };

    libinput.enable = true;
    displayManager.gdm.enable = true;
  };

  environment.systemPackages = with pkgs; [
    wget
    vim
    git
    kitty
    waybar
    hyprpaper
    hypridle
    hyprlock
    hyprpicker
    wlogout
    mpv
    vlc
    neovim
    nil
    statix
    gcc
    clang
    gnumake
    ripgrep
    fd
    bat
    lsd
    go
    yazi
    tmux
    sesh
    lazygit
    lazydocker
    wezterm
    stow
    fzf
    nodejs_24
    fnm
    zoxide
    clang
    btop
    zip
    unzip
    trash-cli
    cargo
    python3
    nixfmt
    ulauncher
    nautilus
    opencode
    docker-compose
    bluetui
    impala
    lua
    lua-language-server
    jq
    gnupg
    gh
    playerctl
    brightnessctl
    jdk
    maven
    gradle
    localsend
    obsidian
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  system.stateVersion = "25.11";

}
