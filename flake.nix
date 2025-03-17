{
	inputs = {
		stylix.url = "github:danth/stylix";
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		astal = {
			url = "github:aylur/astal";
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
	outputs = { home-manager, nixpkgs, nixvim, stylix, astal, ... }@inputs: let
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
			modules = [
				./home
				nixvim.homeManagerModules.nixvim
				stylix.homeManagerModules.stylix
			];
		};
		packages.${system}.default = astal.lib.mkLuaPackage {
			inherit pkgs;
			name = "Lukestal";
			src = ./astal;
			extraPackages = [
				pkgs.dart-sass
				astal.packages.${system}.battery
			];
		};
	};
}
