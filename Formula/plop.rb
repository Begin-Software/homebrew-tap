class Plop < Formula
  desc "Put a file on the web. File hosting for AI coding agents."
  homepage "https://plop.so"
  version "0.1.20260328185729"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260328185729/plop-darwin-arm64"
      sha256 "b42c62065d63f133111f01171538dbd69f38f7d911b254fd4d8b1fef435ff4da"
    else
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260328185729/plop-darwin-x64"
      sha256 "02d6f099135a80f72188dd7cbb53ad299418c26d2ef08e38951066c6812fe710"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260328185729/plop-linux-arm64"
      sha256 "0dc19333ec9b1a3ba70c53232f0f98ca5216ba4b32228cf73223db55f29c76e5"
    else
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260328185729/plop-linux-x64"
      sha256 "1b935d2498c07845be2c018c807bd7920e4e139af047a7b4b9ad71cf9e21205b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "plop"
  end

  test do
    assert_match "plop", shell_output("#{bin}/plop version")
  end
end
