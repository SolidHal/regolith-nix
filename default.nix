let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-22.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
{
  regolith-powerd = pkgs.callPackage ./regolith-powerd.nix { };
  regolith-inputd = pkgs.callPackage ./regolith-inputd.nix {};
  regolith-displayd = pkgs.callPackage ./regolith-displayd.nix {};
}

