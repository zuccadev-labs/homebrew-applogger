class Apploggers < Formula
  desc "AppLoggers telemetry CLI"
  homepage "https://github.com/zuccadev-labs/appLoggers"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/apploggers-v0.1.3/apploggers-darwin-arm64"
      sha256 "146d2c02fb271b047f70d5adb493f5e9aab496ab2c87f6847d4246e93c251917"
    else
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/apploggers-v0.1.3/apploggers-darwin-amd64"
      sha256 "bae281131cbbbaefa5d7f519f0c3d5e798323da6a900996997ddc906085dfaed"
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
