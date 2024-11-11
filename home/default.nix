{
  config,
  pkgs,
  ...
}:
{
  home.username = "aaron";
  home.homeDirectory = "/home/aaron";

  imports = [
    ./develop.nix
  ];

  home.packages = with pkgs; [
    firefox
    google-chrome
    enpass
    telegram-desktop
  ];

  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
