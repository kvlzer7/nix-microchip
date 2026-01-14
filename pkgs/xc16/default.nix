# FIXME: importing this from a level up doesn' work for some reason...
pkgs : rec {
   xc16_2_10 = pkgs.callPackage ./2.10.nix { };
   xc16 = xc16_2_10; #i.e. default to latest
}
