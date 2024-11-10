{
  environment.persistence."/persistent" = {
    hideMounts = true;
    directories = [
      "/etc/NetworkManager/system-connections"
      "/etc/ssh"
      "/etc/daed"

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
        "./config/kdeglobals"
        "./config/kwinrc"
        "./config/kwinoutputconfig.json"
        "./config/plasma-org.kde.plasma.desktop-appletsrc"
        "./config/plasmashellrc"
        "./config/powermanagementprofilesrc"
        "./config/kactivitymanagerdrc"
        "./config/kactivitymanagerd-statsrc"
        "./config/ktimezonedrc"

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
