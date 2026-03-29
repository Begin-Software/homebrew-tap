class Plop < Formula
  desc "Put a file on the web. File hosting for AI coding agents."
  homepage "https://plop.so"
  version "0.1.20260329182957"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260329182957/plop-darwin-arm64"
      sha256 "c4114f879189e7ecf4531ab3b7d0a973a1bf141261325789518e7106892c7d1c"
    else
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260329182957/plop-darwin-x64"
      sha256 "b97f6011d61b75f570f1bf5d324b30d5e0b6e79d2a365aca33b30cf65f3d410b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260329182957/plop-linux-arm64"
      sha256 "f09f60ecfdf56e9a32f563f69ed357375647a59054eb0186ebbda9f9a9c674a0"
    else
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260329182957/plop-linux-x64"
      sha256 "019081bf0e2a29b28cc2d9ead6a611cb27b20cefe8ea76c166f42d29c0cbce94"
    end
  end

  def install
    bin.install stable.url.split("/").last => "plop"
  end

  test do
    assert_match "plop", shell_output("#{bin}/plop version")
  end
end
