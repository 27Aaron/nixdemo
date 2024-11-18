{ config, pkgs, ... }:

{
  services.nftables = {
    enable = true;
    config = ''
      table inet filter {
        chain input {
          type filter hook input priority 0; policy accept;
          # 允许外网访问本地主机的 22 端口 (本地主机的 SSH)
          tcp dport 22 accept;

          # 允许外网访问 VM 转发端口 (例如 2222)
          tcp dport 2222 accept;
        }

        chain forward {
          type filter hook forward priority 0; policy accept;
          # 允许将外部流量转发到 VM 的 22 端口
          ip daddr 192.168.122.102 tcp dport 22 accept;
        }
      }

      table ip nat {
        chain prerouting {
          type nat hook prerouting priority 0; policy accept;
          # 将主机 2222 端口的流量转发到 VM 的 22 端口
          tcp dport 2222 dnat to 192.168.122.102:22;
        }

        chain postrouting {
          type nat hook postrouting priority 100; policy accept;
          # 确保流量从 VM 返回时可以正确出站
          ip saddr 192.168.122.0/24 masquerade;
        }
      }
    '';
  };
}
