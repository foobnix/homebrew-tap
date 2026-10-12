cask "libreracommander" do
  version "1.0.48"
  sha256 "f0ee74af42313a877fe12e1d66fe072cd90f4eb04ef7b3cd742527a9b8cbad1b"

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
