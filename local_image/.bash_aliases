export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
export MOZ_PATH=~
export MOZBUILD_STATE_PATH="${MOZ_PATH}/.mozbuild"
export PATH="${MOZ_PATH}/.mozbuild/git-cinnabar:$PATH"
export HOST=172.17.0.1
export http_proxy=http://$HOST:7890
export https_proxy=http://$HOST:7890
export socks5_proxy=socks5://$HOST:7890
export JAVA_OPTS="-Dhttps.proxyPort=7890 -Dhttps.proxyHost=$HOST"
export PATH="/home/bowman/.mozbuild/git-cinnabar:$PATH"