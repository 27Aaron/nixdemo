{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gtk3
    gtk4
    flat-remix-gtk
  ];

  gtk = {
    enable = true;
    theme = {
      package = pkgs.flat-remix-gtk;
      name = "Flat-Remix-GTK-Grey-Darkest";
    };

    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };

    font = {
      name = "Cantarell Regular";
      size = 12;
    };
  };
}
