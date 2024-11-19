_: {
  virtualisation.oci-containers.containers = {
    # check its logs via `journalctl -u podman-debain`
    debain = {
      hostname = "debain";
      image = "debian:bookworm-20241111";
      ports = [
        "22222:22"
      ];
      environment = {
        TZ = "Asia/Singapore";
      };
      volumes = [
        "/Users/aaron/Documents/Workspace:/Documents/Workspace"
      ];
      autoStart = true;
    };
  };
}
