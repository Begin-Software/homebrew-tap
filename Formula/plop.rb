class Plop < Formula
  desc "Put a file on the web. File hosting for AI coding agents."
  homepage "https://plop.so"
  version "0.1.20260328185425"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260328185425/plop"
      sha256 "9345d697d5d46f24c660e25c20a4df2d6aba5e929cbd2f68df78d81a3cb8ff62"
    end
  end

  def install
    bin.install "plop"
  end

  test do
    assert_match "plop", shell_output("#{bin}/plop version")
  end
end
