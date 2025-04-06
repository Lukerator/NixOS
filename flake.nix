{
  inputs = {
    stylix.url = "github:danth/stylix";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    awesome-neovim-plugins.url = "github:m15a/flake-awesome-neovim-plugins";
    nvf = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:notashelf/nvf";
    };
    /*
      disko = {
        url = "github:nix-community/disko/latest";
        inputs.nixpkgs.follows = "nixpkgs";
      };
    */
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
      home-manager,
      nixpkgs,
      nixvim,
      stylix,
      # disko,
      nvf,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ inputs.awesome-neovim-plugins.overlays.default ];
      };
    in
    {
      nixosConfigurations.Luke-PC = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs; };
        modules = [
          ./modules/system
          ./modules/stylix
          # ./modules/disko
          # disko.nixosModules.disko
          stylix.nixosModules.stylix
          ./modules/stylix/system-targets.nix
        ];
      };
      homeConfigurations.luke = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = { inherit inputs; };
        modules = [
          ./modules/home
          # ./modules/kickstart.nvf
          ./modules/stylix
          # ./modules/.old/nixvimold
          ./modules/nixvim
          ./modules/stylix/home-targets.nix
          stylix.homeManagerModules.stylix
          nixvim.homeManagerModules.nixvim
        ];
      };
    };
}
