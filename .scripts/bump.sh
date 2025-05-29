#!/usr/bin/env bash

VOLD=$(yq -oy '.package.version' Cargo.toml)


cargo bump --git-tag $1
VNEW=$(yq -oy '.package.version' Cargo.toml)

git add Cargo.toml
git commit -m "Bump version to $VNEW"
git tag -a v$VNEW -m "Release v$VNEW"
git push origin v$VNEW
gh release create v$VNEW --generate-notes

SHA=$(curl -L https://github.com/libctf/ctf-rs/archive/refs/tags/$VNEW.tar.gz | shasum -a 256)

sed -E -i.bak "s/version .*/version \"$(VNEW)\"/g" brew/ctf-rs.rb
sed -E -i.bak "s/sha256 .*/sha256 \"$(SHA)\"/g" brew/ctf-rs.rb
sed -E -i.bak "s/$(VOLD)/$(VNEW)/g" brew/ctf-rs.rb
rm brew/ctf-rs.rb.bak
