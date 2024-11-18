{ config, pkgs, ... }:

{
  networking.firewall = {
    # 启用防火墙
    enable = true;

    # 添加端口转发规则
    allowedTCPPorts = [
      22
      2222
    ];

    networking.nat = {
      enable = true;
      prerouting = {
        # 将 2222 端口转发到虚拟机的 22 端口
        "tcp dpt:2222" = "192.168.122.102:22";
      };
    };
  };
}
