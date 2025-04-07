{
  inputs = {
    stylix.url = "github:danth/stylix";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    awesome-neovim-plugins.url = "github:m15a/flake-awesome-neovim-plugins";
    # nvf = {
    #   url = "github:notashelf/nvf";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
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
      home-manager,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      makeNixvim = nixvim.legacyPackages.${system}.makeNixvim;
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ inputs.awesome-neovim-plugins.overlays.default ];
      };
      myNixVim =
        (makeNixvim {
          inherit pkgs;
          config = import ./modules/newnixvim;
        }).neovim;
    in
    {
      packages.${system}.default = myNixVim.neovim;
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
        extraSpecialArgs = { inherit inputs; };
        modules = [
          ./modules/home
          ./modules/stylix
          nixvim.homeManagerModules.nixvim
          stylix.homeManagerModules.stylix
          (
            { pkgs, ... }:
            {
              home.packages = [ myNixVim ];
            }
          )
          ./modules/stylix/home-targets.nix
        ];
      };
    };
}
