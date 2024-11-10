_:

# References: https://nixos.wiki/wiki/Fonts
{
  imports = [
    ./chinese-fonts.nix
    ./common-fonts.nix
    ./fontconfig.nix
    ./icons.nix
  ];

  # Enable fonts
  fonts = {
    # use fonts specified by user rather than default ones
    enableDefaultPackages = false;
    fontDir.enable = true;
  };
}
