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

    # 配置端口转发
    extraCommands = ''
      # 使用 iptables 配置端口转发
      iptables -t nat -A PREROUTING -p tcp --dport 2222 -j DNAT --to-destination 192.168.122.102:22
      iptables -A FORWARD -p tcp -d 192.168.122.102 --dport 22 -j ACCEPT
    '';
  };
}
