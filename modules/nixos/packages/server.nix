{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # basic but essential
    bash-completion # Programmable completion for the bash shell

    # maintenance essentials
    bat
    jq
    pv
    zip
    unzip
    neofetch
    curl
    wget # A network utility to retrieve files from the Web
    ethtool
    pwgen # Password generator
    openssl # Secure Sockets Layer toolkit
    git # Distributed version control system
    lazygit
    gnutar # GNU version of the tar archiving utility
    killall # Kill processes
    screen # Terminal multiplexer with VT100/ANSI terminal emulation
    tmux # Terminal multiplexer
    tree # List contents of directories in a tree-like format
    vim # Vi IMproved, a highly configurable text editor
    ripgrep # Recursively searches directories for a regex pattern
    just # Just a command runner
    pkg-config # Manage compile and link flags for libraries

    # monitoring
    htop
    btop
  ];
}
