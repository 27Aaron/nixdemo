{
  environment.persistence."/persistent" = {
    hideMounts = true;
    directories = [
      "/etc/NetworkManager/system-connections"
      "/etc/ssh"

      "/var/log"
      "/var/lib"
    ];
    files = [

    ];
    users.aaron = {
      directories = [
        "nix-config"

        "Downloads"
        "Music"
        "Pictures"
        "Documents"
        "Videos"

        # JetBrains
        ".config/JetBrains"
        ".cache/JetBrains"
        ".local/share/JetBrains"

        # Chrome
        ".config/google-chrome"
        ".cache/google-chrome"
        ".mozilla"
        ".cache/mozilla"

        # Plasma6
        "./config/plasma-localerc"
        "./config/plasma-org.kde.plasma.desktop-appletsrc"
        "./config/plasmashellrc"
        "./config/kwinoutputconfig.json"

        {
          directory = ".gnupg";
          mode = "0700";
        }
        {
          directory = ".ssh";
          mode = "0700";
        }

      ];
      files = [ ];
    };
  };
}
