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
      just
      firefox
      neofetch
      tree
      btop
    ];
  };

  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
  ];

  networking.firewall.enable = false;

  system.stateVersion = "24.11";

}
