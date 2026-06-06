{ inputs, ... }:

{
  imports = [
    ./nh.nix
    ./nixpkgs.nix
    inputs.nix-index-database.nixosModules.default
  ];

  nix = {
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  # run dynmaically linked binaries (e.g. Mason LSPs)
  programs.nix-ld.enable = true;
}
