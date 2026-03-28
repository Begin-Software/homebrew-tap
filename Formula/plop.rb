class Plop < Formula
  desc "Put a file on the web. File hosting for AI coding agents."
  homepage "https://plop.so"
  version "0.1.20260328221909"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260328221909/plop-darwin-arm64"
      sha256 "20b7eb17eec0d358382448fb95c7936710b15ffb77d4dc9ce55ebaced03e8541"
    else
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260328221909/plop-darwin-x64"
      sha256 "a7e1ccbc53f639b91d711034e524f98e79daf796ed7d3ae54e383bd7a6ebf746"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260328221909/plop-linux-arm64"
      sha256 "3f44bf54356b8b270978dbd60b5ff0b6b826492d226ae476ffa973ba3d8ee7ae"
    else
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260328221909/plop-linux-x64"
      sha256 "d80bf7ef40d432abe0bb0c3ab5dd786c2641ecaf76b4d7a6a486122f202a7f04"
    end
  end

  def install
    bin.install stable.url.split("/").last => "plop"
  end

  test do
    assert_match "plop", shell_output("#{bin}/plop version")
  end
end
