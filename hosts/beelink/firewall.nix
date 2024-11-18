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
      # 允许来自 192.168.122.0/24 子网的 SSH 访问
      iptables -A INPUT -p tcp --dport 22 --source 192.168.122.0/24 -j ACCEPT
      iptables -A INPUT -p tcp --dport 22 -j DROP

      # 端口转发规则：将本地的 2222 端口流量转发到虚拟机的 22 端口
      iptables -t nat -A PREROUTING -p tcp --dport 2222 -j DNAT --to-destination 192.168.122.102:22
      iptables -A FORWARD -p tcp -d 192.168.122.102 --dport 22 -j ACCEPT
    '';
  };
}
