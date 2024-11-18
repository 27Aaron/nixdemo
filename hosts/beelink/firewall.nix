{ config, pkgs, ... }:

{
  # 启用防火墙
  networking.firewall.enable = true;

  # 配置 iptables 规则
  networking.firewall.iptables = {
    enable = true;

    # 允许外网访问主机的 SSH 端口
    extraRules = ''
      # 允许访问本机的 SSH 端口
      -A INPUT -p tcp --dport 22 -j ACCEPT
      # 允许访问主机的转发端口 (例如 2222)
      -A INPUT -p tcp --dport 2222 -j ACCEPT
      # 允许转发到虚拟机的 SSH 端口 (192.168.122.102 的 22 端口)
      -A FORWARD -p tcp -d 192.168.122.102 --dport 22 -j ACCEPT
    '';

    # 配置 NAT 转发规则
    nat = {
      extraRules = ''
        # 将外部访问主机的 2222 端口流量转发到虚拟机的 22 端口
        -A PREROUTING -p tcp --dport 2222 -j DNAT --to-destination 192.168.122.102:22
        # 确保从虚拟机返回的流量使用正确的源地址
        -A POSTROUTING -s 192.168.122.102 -o enp2s0 -j MASQUERADE
      '';
    };
  };
}
