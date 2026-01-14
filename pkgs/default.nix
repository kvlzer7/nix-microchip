# Custom packages, that can be defined similarly to ones from nixpkgs
# You can build them using 'nix build .#example' or (legacy) 'nix-build -A example'

pkgs : rec {
   # FIXME: Want to do something like the below, though preferably in a one-liner, without having to 'inherit... ' afterwards...
   #        Revisit if my nix-fu progresses
   # xc16-versions = import ./xc16 { };
   # inherit (xc16-versions) xc16 xc16_1_61 xc16_2_10;
   xc16_2_10 = pkgs.callPackage ./xc16/2.10.nix { };
   #FIXME: Rework this to pass an xc16 version as a parameter to mplab-x package rather than abusing the default..
   # xc16 = xc16_2_10; #i.e. default to latest version we've bothered to package
   xc16 = xc16_2_10; #i.e. default to the version we're using for current production builds
   xc32_5_00 = pkgs.callPackage ./xc32/5.00.nix { };
   xc32 = xc32_5_00; #i.e. default to the version we're using for current production builds
   xc8_3_10 = pkgs.callPackage ./xc8/3.10.nix { };
   xc8 = xc8_3_10;
   # xc8_3_00 = pkgs.callPackage ./xc8/3.00.nix { };
   # xc8 = xc8_3_00;
   mplab-x-unwrapped = pkgs.callPackage ./mplab-x-unwrapped { };
   mplab-x = pkgs.callPackage ./mplab-x { inherit mplab-x-unwrapped xc16 xc32 xc8; };
   # mplab-x = pkgs.callPackage ./mplab-x { inherit mplab-x-unwrapped xc16 xc32; };
}
