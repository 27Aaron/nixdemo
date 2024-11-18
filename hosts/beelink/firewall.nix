{ config, pkgs, ... }:

{
  # 启用防火墙
  networking.firewall.enable = true;

  # 允许访问主机的 22 端口（SSH）
  networking.firewall.allowedTCPPorts = [ 22 ];

  # 配置端口转发
  networking.firewall.nat = {
    enable = true;
    extraRules = ''
      # 将外部访问主机的 2222 端口流量转发到虚拟机的 22 端口
      -A PREROUTING -p tcp --dport 2222 -j DNAT --to-destination 192.168.122.102:22
      # 确保虚拟机的返回流量能够正确出站
      -A POSTROUTING -s 192.168.122.102 -o enp2s0 -j MASQUERADE
    '';
  };

  # 允许访问虚拟机的 22 端口
  networking.firewall.extraRules = ''
    # 允许转发到虚拟机的 22 端口
    -A FORWARD -p tcp -d 192.168.122.102 --dport 22 -j ACCEPT
  '';
}
