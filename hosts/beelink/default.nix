{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./hardware.nix

    ../../modules/nixos/base
    ../../modules/nixos/fonts
    ../../modules/nixos/themes
    ../../modules/nixos/packages
    ../../modules/nixos/disko/crypt-nvme
    ../../modules/nixos/impermanence/desktop
  ];

  networking.hostName = "beelink";
  networking.networkmanager.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the Plasma 5 Desktop Environment.
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  networking.firewall.enable = false;

  system.stateVersion = "24.11";

}
