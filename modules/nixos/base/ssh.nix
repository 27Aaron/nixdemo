{
  lib,
  ...
}:
{
  users.users.root = {
    hashedPassword = "$7$CU..../....mTYw28fnKaMzRRszVZhR21$tYH1/Z7DDGft7oGc67h61EBTXZ6JXbuzHJNIYmvYhV1";
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKHjMAQUXfyMv8TG1NfqjmQJG3gqZkh25KAvAMvxVrWS Aaron@MacBook-Pro"
    ];
  };

  users.users.aaron = {
    hashedPassword = "$7$CU..../....mTYw28fnKaMzRRszVZhR21$tYH1/Z7DDGft7oGc67h61EBTXZ6JXbuzHJNIYmvYhV1";
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKHjMAQUXfyMv8TG1NfqjmQJG3gqZkh25KAvAMvxVrWS Aaron@MacBook-Pro"
    ];
  };

  services.openssh.enable = true;
}
