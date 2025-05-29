cask "ctf-rs" do
  version "0.1.0"
  sha256 "{{ sha256sum }}"

  url "https://github.com/libctf/desktop-app/releases/download/v#{version}/ctf-rs-#{version}.dmg",
      verified: "https://github.com/libctf/desktop-app"
  name "ctf-rs"
  desc "Cloud-Native CTF Platform"
  homepage "https://ctf.rs/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ctf-rs.app"

  zap trash: [
    "~/Library/Application Support/ctf-rs",
    "~/Library/Logs/ctf-rs",
    "~/Library/Preferences/ctf-rs.plist",
    "~/Library/Saved Application State/ctf-rs.savedState",
  ]
end
