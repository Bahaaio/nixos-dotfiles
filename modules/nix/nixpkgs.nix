{ inputs, ... }:

{
  nixpkgs = {
    config.allowUnfree = true;
    overlays = [
      inputs.nix-output-monitor.overlays.default
      (import ../../pkgs)
    ];
  };
}
