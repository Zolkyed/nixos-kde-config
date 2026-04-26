{
  description = "Zolkyed's NixOS Flake configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };

    nur.url = "github:nix-community/NUR";

    nixcord.url = "github:kaylorben/nixcord";

    nix-gaming.url = "github:fufexan/nix-gaming";

    nix-flatpak.url = "github:gmodena/nix-flatpak";

    ghostty.url = "github:ghostty-org/ghostty";
  };

  outputs =
    {
      nixpkgs,
      self,
      ...
    }@inputs:
    let
      username = "Zolkyed";
      system = "x86_64-linux";
      githubUsername = "Zolkyed";
      githubEmail = "zolkyed@gmail.com";
      commonArgs = {
        inherit
          self
          inputs
          username
          system
          githubUsername
          githubEmail
          ;
      };
    in
    {
      nixosConfigurations = {
        laptop = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = with inputs; [
            ./hosts/laptop
            home-manager.nixosModules.home-manager
            {
              home-manager = {
                backupFileExtension = "backup";
                useUserPackages = true;
                useGlobalPkgs = true;
                sharedModules = [
                  plasma-manager.homeManagerModules.plasma-manager
                  nixcord.homeManagerModules.nixcord
                  nix-flatpak.homeManagerModules.nix-flatpak
                ];
                extraSpecialArgs = {
                  inherit
                    inputs
                    username
                    githubEmail
                    githubUsername
                    ;
                  host = "laptop";
                };
                users.${username} = { };
              };
            }
          ];
          specialArgs = commonArgs // { host = "laptop"; };
        };

        desktop = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = with inputs; [
            ./hosts/desktop
            home-manager.nixosModules.home-manager
            {
              home-manager = {
                backupFileExtension = "backup";
                useUserPackages = true;
                useGlobalPkgs = true;
                sharedModules = [
                  plasma-manager.homeManagerModules.plasma-manager
                  nixcord.homeManagerModules.nixcord
                  nix-flatpak.homeManagerModules.nix-flatpak
                ];
                extraSpecialArgs = {
                  inherit
                    inputs
                    username
                    githubEmail
                    githubUsername
                    ;
                  host = "desktop";
                };
                users.${username} = { };
              };
            }
          ];
          specialArgs = commonArgs // { host = "desktop"; };
        };
      };
    };
}