class Visp < Formula
  desc "A simple ffmpeg wrapper tool for Apple Silicon Mac, written in Common Lisp"
  homepage "https://github.com/ogrew/visp"
  url "https://github.com/ogrew/visp/releases/download/v0.2.0/visp-macos-arm64.zip"
  sha256 "cddd26dca4c915c3a0304ad50d665a991221b28b51c338680b565fb3e4069d7c"
  license "MIT"

  if Hardware::CPU.intel?
    odie "visp is only supported on Apple Silicon Macs (arm64). Sorry!"
  end

  def install
    bin.install "visp"
  end
end
