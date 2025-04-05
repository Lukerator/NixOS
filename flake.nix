{
  inputs = {
    stylix.url = "github:danth/stylix";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    awesome-neovim-plugins.url = "github:m15a/flake-awesome-neovim-plugins";
    nvf = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:notashelf/nvf";
    };
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
          ./system
          ./stylix
          stylix.nixosModules.stylix
          ./stylix/system-targets.nix
        ];
      };
      homeConfigurations.luke = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = { inherit inputs; };
        modules = [
          ./home
          # ./kickstart.nvf
          ./stylix
          # ./.old/nixvimold
          ./nixvim
          ./stylix/home-targets.nix
          stylix.homeManagerModules.stylix
          nixvim.homeManagerModules.nixvim
        ];
      };
    };
}
