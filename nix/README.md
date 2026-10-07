# Nix flake repository

## インストール済みパッケージの更新

```shell
sudo nix upgrade-nix
nix flake update
sudo darwin-rebuild switch --flake '.#default'
```

## 不要なファイルの削除

```shell
nix store gc
nix-collect-garbage -d      # remove old versions
sudo nix-collect-garbage -d # remove old versions
```

