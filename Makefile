.PHONY: bump

bump:
   @cargo bump --git-tag $(BUMP)
   @export VER=$(shell yq -oy '.package.version' Cargo.toml)
   @export SHA=$(shell sha256sum target/package/ctf-rs-api-server-$(VER))
   @sed -E -i.bak "s/version .*/version \"$(VER)\"/g" brew/ctf-rs.rb
   @sed -E -i.bak 's/sha256 .*"/sha256 \"$(SHA)\"/g' brew/ctf-rs.rb
   @rm brew/ctf-rs.rb.bak
