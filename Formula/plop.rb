class Plop < Formula
  desc "Put a file on the web. File hosting for AI coding agents."
  homepage "https://plop.so"
  version "0.1.20260329045246"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260329045246/plop-darwin-arm64"
      sha256 "73fe30dede31f2882cac5d4fd6d3547d00a16376be6faed548bf483f81c40d17"
    else
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260329045246/plop-darwin-x64"
      sha256 "7438d07dedbd7baa7117018160b63663fa40e52a51e04f9b6094bf469e9014d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260329045246/plop-linux-arm64"
      sha256 "38274ad300af098de77f53f74151318c4cbe804c07668788c83d004942f64862"
    else
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260329045246/plop-linux-x64"
      sha256 "c0ff7c103f9a90288630d21cc70cc2fde3f4ea3877ed331705e703883b2c24c1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "plop"
  end

  test do
    assert_match "plop", shell_output("#{bin}/plop version")
  end
end
