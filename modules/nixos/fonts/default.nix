_:

# References: https://nixos.wiki/wiki/Fonts
{
  imports = [
    ./bindfs.nix
    ./chinese-fonts.nix
    ./common-fonts.nix
    ./fontconfig.nix
    ./icons.nix
  ];

  # Enable fonts
  fonts = {
    fontDir.enable = true;
  };
}
