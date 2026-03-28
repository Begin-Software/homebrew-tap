class Plop < Formula
  desc "Put a file on the web. File hosting for AI coding agents."
  homepage "https://plop.so"
  version "0.1.20260328222032"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260328222032/plop-darwin-arm64"
      sha256 "007d19be0756bfe57b242544875cfdd0cae47c469f5642bdb6c9dfabe110488c"
    else
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260328222032/plop-darwin-x64"
      sha256 "48744965f2465e51d02e351c79453f1fb1eba632772f711e0d059c42822fbf6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260328222032/plop-linux-arm64"
      sha256 "cb34f5dd74ad6a666773269553fab1649d02ddea064369ed93e89ad40f17d26c"
    else
      url "https://github.com/Begin-Software/plop-cli/releases/download/v0.1.20260328222032/plop-linux-x64"
      sha256 "714d3e430ee3c6d7258515466a0fcf3cf83c5e248eddbae8dddb90ae0d31f627"
    end
  end

  def install
    bin.install stable.url.split("/").last => "plop"
  end

  test do
    assert_match "plop", shell_output("#{bin}/plop version")
  end
end
