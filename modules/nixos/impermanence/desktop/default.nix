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

        ".mozilla"
        ".cache/JetBrains"
        ".cache/google-chrome"

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
