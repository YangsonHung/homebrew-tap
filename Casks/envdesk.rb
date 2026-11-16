cask "envdesk" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "cae714f6b39f1c728cf486cf750924988c1baf00d7ecdec074b83c0d3aec3b91",
         intel: "cce30845a9558592f3e7af952ae398e4c8a481fb2d04c693d1ff097bd1a5d878"

  url "https://github.com/YangsonHung/envdesk/releases/download/v#{version}/EnvDesk_#{version}_#{arch}.dmg"
  name "EnvDesk"
  desc "Local environment configuration manager"
  homepage "https://github.com/YangsonHung/envdesk"

  depends_on :macos

  app "EnvDesk.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/EnvDesk.app"]
  end

  caveats do
    <<~EOS
      EnvDesk is ad-hoc signed and not notarized by Apple.
      This cask removes the quarantine flag from EnvDesk.app after installation.
    EOS
  end
end
