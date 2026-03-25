class Agf < Formula
  desc "AI Agent Session Finder TUI — unified launcher for Claude Code, Codex, OpenCode, Pi, Kiro, and Cursor CLI"
  homepage "https://github.com/subinium/agf"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/subinium/agf/releases/download/v#{version}/agf-aarch64-apple-darwin.tar.gz"
      sha256 "6343db71742a26961eb48ae4b5fa5945b2703473aa5ab3cd4431fe84f8469737"
    else
      url "https://github.com/subinium/agf/releases/download/v#{version}/agf-x86_64-apple-darwin.tar.gz"
      sha256 "6581fed8c70104567951117907ae7eb802e0dd28a6e4530c26c136e17a8d7b76"
    end
  end

  on_linux do
    url "https://github.com/subinium/agf/releases/download/v#{version}/agf-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2fdc8b650a97f54b0a6c95bb85f5cc356e354c0bc8ddf760d431231c201a6dbf"
  end

  def install
    bin.install "agf"
  end

  test do
    assert_match "agf", shell_output("#{bin}/agf --help")
  end
end
