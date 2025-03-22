{
	inputs = {
		stylix.url = "github:danth/stylix";
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		ironbar = {
			url = "github:JakeStanger/ironbar";
			inputs.nixpkgs.follows = "nixpkgs";
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
	outputs = { home-manager, ironbar, nixpkgs, nixvim, stylix, ... }@inputs: let
		system = "x86_64-linux";
		pkgs = nixpkgs.legacyPackages.${system};
	in {
		nixosConfigurations.Luke-PC =  nixpkgs.lib.nixosSystem {
			inherit system;
			specialArgs = { inherit inputs; };
			modules = [
				./system
				stylix.nixosModules.stylix
			];
		};
		homeConfigurations.luke = home-manager.lib.homeManagerConfiguration {
			inherit pkgs;
			extraSpecialArgs = { inherit inputs; };
			modules = [
				./home
				nixvim.homeManagerModules.nixvim
				stylix.homeManagerModules.stylix
				ironbar.homeManagerModules.default
			];
		};
	};
}
