cask "libreracommander" do
  version "1.0.58"
  sha256 "e3ba387f80b3c64a5b0b5619cfd3a0200a497193cd79d7440f1138b8eb54ca2a"

  url "https://github.com/foobnix/LibreraCommander-releases/releases/download/v#{version}/LibreraCommander-#{version}.dmg"
  name "LibreraCommander"
  desc "Dual-pane file manager with terminal, previews and Android/iOS device panels"
  homepage "https://github.com/foobnix/LibreraCommander-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "LibreraCommander.app"

  zap trash: [
    "~/Library/Caches/app.librera.LibreraCommander",
    "~/Library/HTTPStorages/app.librera.LibreraCommander",
    "~/Library/Preferences/app.librera.LibreraCommander.plist",
    "~/Library/Saved Application State/app.librera.LibreraCommander.savedState",
    "~/Library/WebKit/app.librera.LibreraCommander",
  ]
end
