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
    # ./firewall.nix

    ../../modules/nixos/base
    ../../modules/nixos/fonts
    # ../../modules/nixos/themes
    ../../modules/nixos/packages
    # ../../modules/nixos/virtualization
    ../../modules/nixos/oci-containers
    ../../modules/nixos/oci-containers/debian
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

  services.realm = {
    enable = true;
    config = {
      log = {
        level = "info";
      };
      network = {
        no_tcp = false;
        use_udp = true;
        tcp_timeout = 5;
        udp_timeout = 30;
      };
      endpoints = [
        {
          listen = "0.0.0.0:2222";
          remote = "192.168.122.102:22";
        }
      ];
    };
  };

  programs.git = {
    enable = true;
    config = {
      user.name = "Aaron";
      user.email = "85681241+27Aaron@users.noreply.github.com";
    };
  };

  networking.firewall.enable = false;

  system.stateVersion = "24.11";

}
