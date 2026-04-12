class Apploggers < Formula
  desc "AppLoggers telemetry CLI"
  homepage "https://github.com/zuccadev-labs/appLoggers"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/apploggers-v0.2.2/apploggers-darwin-arm64"
      sha256 "8b6ba91856ff4032198deb7600d3d3d9a302af04822ab6b5843d6444fa5c4f9a"
    else
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/apploggers-v0.2.2/apploggers-darwin-amd64"
      sha256 "4b98edafb63e4203cb0118363302f4ca36a549051d421d474e3f1f616922fbe0"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "apploggers-darwin-arm64" => "apploggers"
    else
      bin.install "apploggers-darwin-amd64" => "apploggers"
    end
  end
end
