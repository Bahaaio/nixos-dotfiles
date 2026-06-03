{ ... }:

{
  programs.nh = {
    enable = true;
    flake = "/home/bahaa/nixos-dotfiles";
    clean = {
      enable = true;
      extraArgs = "--keep-since 14d --keep 3 --optimise";
    };
  };

  nix = {
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  nixpkgs.config.allowUnfree = true;

  # run dynmaically linked binaries (e.g. Mason LSPs)
  programs.nix-ld.enable = true;

  system.stateVersion = "25.11";
}
