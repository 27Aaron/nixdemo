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

  users.users.aaron = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      firefox
    ];
  };

  networking.firewall.enable = false;

  system.stateVersion = "24.11";

}
