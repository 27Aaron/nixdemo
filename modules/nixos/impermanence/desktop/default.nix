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

        ".npm"
        ".java"

        # JetBrains
        ".config/JetBrains"
        ".cache/JetBrains"
        ".local/share/JetBrains"

        # Vscode
        ".config/Code"

        # Chrome
        ".config/google-chrome"
        ".cache/google-chrome"
        ".cache/bookmarksrunner"
        ".cache/mozilla"
        ".mozilla"

        # Enpass
        ".cache/Enpass"

        {
          directory = ".gnupg";
          mode = "0700";
        }
        {
          directory = ".ssh";
          mode = "0700";
        }
        {
          directory = ".docker";
          mode = "0700";
        }

      ];
      files = [ ];
    };
  };
}
