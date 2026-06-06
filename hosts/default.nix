{ nixpkgs, inputs, ... }:

let
  inherit (nixpkgs.lib) nixosSystem;
  specialArgs = { inherit inputs; };
in
{
  nixos = nixosSystem {
    system = "x86_64-linux";
    inherit specialArgs;
    modules = [
      ./laptop
      inputs.nix-index-database.nixosModules.default
      {
        nixpkgs.overlays = [ (import ../pkgs) ];
      }
    ];
  };
}
