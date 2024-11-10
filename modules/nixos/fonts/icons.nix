{ pkgs, ... }:

{
  # Enable fonts
  fonts = {
    packages = with pkgs; [
      font-awesome
      noto-fonts-emoji
      material-design-icons
    ];
  };
}
