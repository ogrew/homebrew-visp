class Visp < Formula
  desc "A simple ffmpeg wrapper tool for Apple Silicon Mac, written in Common Lisp"
  homepage "https://github.com/ogrew/visp"
  url "https://github.com/ogrew/visp/releases/download/v0.3.0/visp-v0.3.0-macos-arm64.zip"
  sha256 "07cd0e68d1aede1445750aceaf8ca2b98bb7501e3b91c521956b209f6d3735f5"
  license "MIT"

  if Hardware::CPU.intel?
    odie "visp is only supported on Apple Silicon Macs (arm64). Sorry!"
  end

  def install
    bin.install "visp-macos-arm64" => "visp"
  end
end
