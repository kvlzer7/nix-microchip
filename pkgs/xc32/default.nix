# FIXME: importing this from a level up doesn' work for some reason...
pkgs : rec {
   xc32_5_00 = pkgs.callPackage ./5.00.nix { };
   xc32 = xc32_5_00; #i.e. default to latest
}
