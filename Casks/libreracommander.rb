cask "libreracommander" do
  version "1.0.50"
  sha256 "cd81f1001daed9e5f3d7905ed4d8f6bbbaae9b2976e796e2c1d50ce3bd7cdf9b"

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
