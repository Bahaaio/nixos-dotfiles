{ ... }:

{
  nix = {
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  nixpkgs.config.allowUnfree = true;

  # run dynmaically linked binaries (e.g. Mason LSPs)
  programs.nix-ld.enable = true;

  system.stateVersion = "25.11";
}
