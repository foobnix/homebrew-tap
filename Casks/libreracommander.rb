cask "libreracommander" do
  version "1.0.30"
  sha256 "e2d4972310ee9f4ef139351799e6845ec7571d9c6611034ce9deaf13d48d66ca"

  url "https://github.com/foobnix/LibreraCommander-releases/releases/download/v#{version}/LibreraCommander-#{version}.dmg"
  name "LibreraCommander"
  desc "Dual-pane file manager with terminal, previews and Android/iOS device panels"
  homepage "https://github.com/foobnix/LibreraCommander-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "LibreraCommander.app"

  # The app isn't notarized yet: clear the download quarantine so macOS opens it.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/LibreraCommander.app"],
        writable_paths: ["{{appdir}}/LibreraCommander.app"]
  end

  zap trash: [
    "~/Library/Caches/app.librera.LibreraCommander",
    "~/Library/HTTPStorages/app.librera.LibreraCommander",
    "~/Library/Preferences/app.librera.LibreraCommander.plist",
    "~/Library/Saved Application State/app.librera.LibreraCommander.savedState",
    "~/Library/WebKit/app.librera.LibreraCommander",
  ]
end
