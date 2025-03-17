{
	inputs = {
		stylix.url = "github:danth/stylix";
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		ags = {
			url = "github:aylur/ags";
			inputs.nixpkgs.follows = "nixpkgs";
		};
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
	outputs = { home-manager, nixpkgs, nixvim, stylix, astal, ags, ... }@inputs: let
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
		packages.${system}.default = pkgs.stdenvNoCC.mkDerivation rec {
			name = "Luke-shell";
			src = ./astal;
			nativeBuildInputs = [
				ags.packages.${system}.default
				pkgs.wrapGAppsHook
				pkgs.gobject-introspection
			];
			buildInputs = with astal.packages.${system}; [
				astal3
				io
			];
			installPhase = ''
				mkdir -p $out/bin
				ags bundle app.ts $out/bin/${name}
			'';
		};
	};
}
