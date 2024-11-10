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
        ".config/kactivitymanagerdrc"
        ".config/kactivitymanagerd-statsrc"
        ".config/kconf_updaterc"
        ".config/kded5rc"
        ".config/kdedefaults"
        ".config/kdeglobals"
        ".config/kde.org"
        ".config/kglobalshortcutsrc"
        ".config/ktimezonedrc"
        ".config/kwinoutputconfig.json"
        ".config/kwinrc"
        ".config/plasma-localerc"
        ".config/plasma-org.kde.plasma.desktop-appletsrc"
        ".config/plasmashellrc"

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
