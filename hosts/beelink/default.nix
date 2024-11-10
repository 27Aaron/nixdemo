{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./proxy.nix
    ./hardware.nix

    ../../modules/nixos/base
    ../../modules/nixos/fonts
    # ../../modules/nixos/themes
    ../../modules/nixos/packages
    ../../modules/nixos/disko/crypt-nvme
    ../../modules/nixos/impermanence/desktop
  ];

  networking.hostName = "beelink";
  networking.networkmanager.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the Plasma 6 Desktop Environment.
  services.displayManager.sddm = {
    enable = true;
    autoLogin = {
      enable = true;
      user = "aaron";
    };
  };
  services.desktopManager.plasma6.enable = true;

  networking.firewall.enable = false;

  system.stateVersion = "24.11";

}
