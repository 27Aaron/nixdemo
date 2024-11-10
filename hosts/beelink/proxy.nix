{
  pkgs,
  ...
}:
{
  services.daed = {
    enable = true;
    package = pkgs.daed;
    openFirewall = {
      enable = true;
      port = 12345;
    };
    configDir = "/etc/daed";
    listen = "127.0.0.1:2023";
  };
}
