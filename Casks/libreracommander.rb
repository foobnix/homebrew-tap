cask "libreracommander" do
  version "1.0.55"
  sha256 "cb1513bda32716d81b2419dae50406af615ff44bb201d75f9b86bb4f2fa2e0be"

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
