{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # misc
    cpufetch # Simplistic yet fancy CPU architecture fetching tool
    vulkan-tools # Khronos official Vulkan Tools and Utilities
    glxinfo # Test utilities for OpenGL
    acpi # Show battery status and other ACPI information
    psmisc # killall/pstree/prtstat/fuser/...
    pciutils # lspci
    usbutils # lsusb
    hdparm # for disk performance, command
    parted
  ];
}
