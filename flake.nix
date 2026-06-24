{
  description = "living on the edge";

  outputs = inputs: {
    nixosConfigurations = import ./hosts { inherit inputs; };
  };

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    silentSDDM = {
      url = "github:uiriansan/SilentSDDM";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    go-pray = {
      url = "github:0xzer0x/go-pray";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    pomo = {
      url = "github:Bahaaio/pomo";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-output-monitor = {
      url = "github:maralorn/nix-output-monitor";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}
