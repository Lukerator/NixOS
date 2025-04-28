{
  inputs = {
    stylix.url = "github:danth/stylix";
    spicetify.url = "github:Gerg-L/spicetify-nix";
    vimextraplugins.url = "github:m15a/nixpkgs-vim-extra-plugins";
    nixpkgs.url = "git+https://github.com/NixOS/nixpkgs?shallow=1&ref=nixos-unstable";
    nixvim = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/nixvim";
    };
    home-manager = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/home-manager";
    };
  };
  outputs =
    {
      # nvf,
      nixvim,
      stylix,
      nixpkgs,
      spicetify,
      home-manager,
      vimextraplugins,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ vimextraplugins.overlays.default ];
      };
    in
    {
      nixosConfigurations.Luke-PC = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs; };
        modules = [
          ./modules/stylix
          ./modules/system
          stylix.nixosModules.stylix
          ./modules/stylix/system-targets.nix
        ];
      };
      homeConfigurations.luke = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = { inherit inputs pkgs; };
        modules = [
          ./modules/home
          ./modules/nixvim
          ./modules/stylix
          nixvim.homeManagerModules.nixvim
          stylix.homeManagerModules.stylix
          ./modules/stylix/home-targets.nix
          spicetify.homeManagerModules.default
        ];
      };
    };
}
