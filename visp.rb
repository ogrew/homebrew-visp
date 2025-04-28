class Visp < Formula
  desc "A simple ffmpeg wrapper tool for Apple Silicon Mac, written in Common Lisp"
  homepage "https://github.com/ogrew/visp"
  url "https://github.com/ogrew/visp/releases/download/v0.1.0/visp-macos-arm64.zip"
  sha256 "2b6125c119b545ef32d48c2da86282e08a62d405a2621741a4acc6301d9c6063"
  license "MIT"

  if Hardware::CPU.intel?
    odie "visp is only supported on Apple Silicon Macs (arm64). Sorry!"
  end

  def install
    bin.install "visp"
  end
end
