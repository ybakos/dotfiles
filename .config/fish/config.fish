set -gx PATH  /usr/local/sbin /usr/local/go/bin $HOME/projects/go/bin $PATH
set PKG_CONFIG_PATH /usr/lib/pkgconfig /usr/lib64/pkgconfig /usr/local/lib64/pkgconfig /usr/local/lib/pkgconfig /usr/local/share/pkgconfig $PKG_CONFIG_PATH
set LD_LIBRARY_PATH /usr/local/lib64/ /usr/local/lib/ $LD_LIBRARY_PATH
set -x GOPATH $HOME/projects/go
test -s /home/ybakos/.nvm-fish/nvm.fish; and source /home/ybakos/.nvm-fish/nvm.fish
rvm default

