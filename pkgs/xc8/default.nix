# FIXME: importing this from a level up doesn' work for some reason...
pkgs : rec {
   xc8_3_10 = pkgs.callPackage ./3.10.nix { };
   xc8 = xc8_3_10; #i.e. default to latest
   # xc8_3_00 = pkgs.callPackage ./3.00.nix { };
   # xc8 = xc8_3_00; #i.e. default to latest
}
