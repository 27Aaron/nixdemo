{
  config,
  pkgs,
  ...
}:
{
  home.username = "aaron";
  home.homeDirectory = "/home/aaron";

  home.packages = with pkgs; [
    firefox
    google-chrome
    jetbrains.idea-ultimate
  ];

  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
