class Visp < Formula
  desc "A simple ffmpeg wrapper tool for Apple Silicon Mac, written in Common Lisp"
  homepage "https://github.com/ogrew/visp"
  url "https://github.com/ogrew/visp/releases/download/v0.3.0/visp-v0.3.0-macos-arm64.zip"
  sha256 "4ee99757ee6c31c0f42659e1a998cbf4e3778732dacf511ae932aa7191b148f2"
  license "MIT"

  if Hardware::CPU.intel?
    odie "visp is only supported on Apple Silicon Macs (arm64). Sorry!"
  end

  def install
    bin.install "visp-macos-arm64" => "visp"
  end
end
