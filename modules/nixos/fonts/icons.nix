{ pkgs, ... }:

{
  # Enable fonts
  fonts = {
    packages = with pkgs; [
      font-awesome
      material-design-icons
    ];
  };
}
