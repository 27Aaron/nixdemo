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

    extraCommands = ''
      # 端口转发规则：将虚拟机的 22 端口流量转发到本地的 2222 端口
      iptables -t nat -A PREROUTING -p tcp --dport 22 -d 192.168.122.102 -j DNAT --to-destination 127.0.0.1:2222
      iptables -A FORWARD -p tcp -d 127.0.0.1 --dport 2222 -j ACCEPT
    '';
  };
}
