# Taken from: https://blog.skk.moe/post/enable-proxy-on-ubuntu/
function proxy --description "Enable proxy in WSL"
    curl -s "https://api.ip.sb/geoip" | \
      jq '. | {Status: "oldIP", IP: .ip, Country: .country, Org: .organization}'

    set -gx ALL_PROXY "socks5://127.0.0.1:8081"
    set -gx all_proxy "socks5://127.0.0.1:8081"
    scoop config proxy "127.0.0.1:8080"
    echo -e "Acquire::http::Proxy \"http://127.0.0.1:8080\";" | sudo tee -a /etc/apt/apt.conf > /dev/null
    echo -e "Acquire::https::Proxy \"http://127.0.0.1:8080\";" | sudo tee -a /etc/apt/apt.conf > /dev/null

    curl -s "https://api-ipv4.ip.sb/geoip" | \
      jq '. | {Status: "newIPv4", IP: .ip, Country: .country, Org: .organization}'
    curl -s "https://api-ipv6.ip.sb/geoip" | \
      jq '. | {Status: "newIPv6", IP: .ip, Country: .country, Org: .organization}'
end

function noproxy --description "Disable proxy in WSL"
    set -e ALL_PROXY
    set -e all_proxy
    scoop config rm proxy
    sudo sed -i -e '/Acquire::http::Proxy/d' /etc/apt/apt.conf
    sudo sed -i -e '/Acquire::https::Proxy/d' /etc/apt/apt.conf

    curl -s "https://api.ip.sb/geoip" | \
      jq '. | {IP: .ip, Country: .country, Org: .organization}'
end
