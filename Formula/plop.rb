class Plop < Formula
  desc "Put a file on the web. File hosting for AI coding agents."
  homepage "https://plop.so"
  version "0.1.20260331022755"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260331022755/plop-darwin-arm64"
      sha256 "14b050a384300b949480b50c0c7ac47846be7be1a4e6f9f058affe19a6623d9a"
    else
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260331022755/plop-darwin-x64"
      sha256 "c1001db235d7cc5afedde55643e86c5aa5f4273f6fd08e105bf3d0fd88853ff2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260331022755/plop-linux-arm64"
      sha256 "3c7803c23e9a1705f6ad7d61d23aa88578925811785ef5b7da5ab45126a5b313"
    else
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260331022755/plop-linux-x64"
      sha256 "927661eb5cc4df2fc5be125beb6301bb5d9d7ad2e694de938d820dcd8f21f4fa"
    end
  end

  def install
    bin.install stable.url.split("/").last => "plop"
  end

  test do
    assert_match "plop", shell_output("#{bin}/plop version")
  end
end
