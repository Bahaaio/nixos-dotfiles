{ inputs, ... }:

let
  inherit (inputs.nixpkgs.lib) nixosSystem;
  specialArgs = { inherit inputs; };
  system = "x86_64-linux";
in
{
  nixos = nixosSystem {
    inherit system specialArgs;
    modules = [ ./laptop ];
  };
}
