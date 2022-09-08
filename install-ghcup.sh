cd /tmp
for f in stack cabal ghcup; do
  rm -rf $HOME/.$f
  mkdir -p /workspace/ghcup/.$f
  ln -s /workspace/ghcup/.$f $HOME
done
curl --proto 'https' -tlsv1.2 -sSf https://downloads.haskell.org/~ghcup/x86_64-linux-ghcup > ./ghcup
chmod 755 ./ghcup
sudo mv ./ghcup /usr/local/bin
ghcup install ghc 8.10.7
ghcup install cabal 3.8.1.0
ghcup install stack
ghcup set ghc 8.10.7
ghcup set cabal 3.8.1.0
for f in stack cabal ghc ghci; do
  sudo rm -f /usr/local/bin/$f
  sudo ln -s /home/gitpod/.ghcup/bin/$f /usr/local/bin/$f
done
