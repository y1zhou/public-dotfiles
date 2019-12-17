abbr  v nvim
abbr vim nvim
abbr ... 'cd ../../'
abbr .... 'cd ../../../'
abbr la 'exa -abgFhls new'
abbr ll 'exa -bgFhls new'
abbr diff 'diff -y --color=always'
abbr cdiff 'colordiff -tys'

#set -x PATH $HOME/miniconda3/bin $PATH
#set -x PATH /usr/local/go/bin $PATH

# Taken from: https://blog.skk.moe/post/enable-proxy-on-ubuntu/
function proxy --description "Enable proxy in WSL"
    curl -s "https://api.ip.sb/geoip" | \
      jq '. | {Status: "oldIP", IP: .ip, Country: .country, Org: .organization}'

    set -gx ALL_PROXY "socks5://127.0.0.1:7891"
    set -gx all_proxy "socks5://127.0.0.1:7891"
    scoop config proxy "127.0.0.1:7890"
    echo -e "Acquire::http::Proxy \"http://127.0.0.1:7890\";" | sudo tee -a /etc/apt/apt.conf > /dev/null
    echo -e "Acquire::https::Proxy \"http://127.0.0.1:7890\";" | sudo tee -a /etc/apt/apt.conf > /dev/null

    curl -s "https://api-ipv4.ip.sb/geoip" | \
      jq '. | {Status: "newIPv4", IP: .ip, Country: .country, Org: .organization}'
    curl -s "https://api-ipv6.ip.sb/geoip" | \
      jq '. | {Status: "newIPv6", IP: .ip, Country: .country, Org: .organization}'
end

function noproxy --description "Enable proxy in WSL"
    set -e ALL_PROXY 
    set -e all_proxy
    scoop config rm proxy
    sudo sed -i -e '/Acquire::http::Proxy/d' /etc/apt/apt.conf
    sudo sed -i -e '/Acquire::https::Proxy/d' /etc/apt/apt.conf

    curl -s "https://api.ip.sb/geoip" | \
      jq '. | {IP: .ip, Country: .country, Org: .organization}'
end

# Taken from: https://github.com/dideler/dotfiles/blob/master/functions/extract.fish
function x  --description "Expand or extract bundled & compressed files"
  set --local ext (echo $argv[1] | awk -F. '{print $NF}')
  switch $ext
    case tar  # non-compressed, just bundled
      tar -xvf $argv[1]
    case gz
      if test (echo $argv[1] | awk -F. '{print $(NF-1)}') = tar  # tar bundle compressed with gzip
        tar -zxvf $argv[1]
      else  # single gzip
        gunzip $argv[1]
      end
    case tgz  # same as tar.gz
      tar -zxvf $argv[1]
    case bz2  # tar compressed with bzip2
      tar -jxvf $argv[1]
    case rar
      unrar x $argv[1]
    case zip
      unzip $argv[1]
    case '*'
      echo "unknown extension"
  end
end
