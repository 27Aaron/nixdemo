{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # system call monitoring
    strace # system call monitoring
    ltrace # library call monitoring
    tcpdump # network sniffer
    lsof # list open files
    bpftrace # powerful tracing tool
  ];
}
