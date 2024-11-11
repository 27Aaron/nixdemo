{
  config,
  lib,
  pkgs,
  ...
}:
{
  # `programs.git` will generate the config file: ~/.config/git/config
  # to make git use this config file, `~/.gitconfig` should not exist!
  #
  #    https://git-scm.com/docs/git-config#Documentation/git-config.txt---global

  programs.git = {
    enable = true;
    lfs.enable = true;

    userName = "Aaron";
    userEmail = "85681241+27Aaron@users.noreply.github.com";

  };
}
