class Apploggers < Formula
  desc "AppLoggers telemetry CLI"
  homepage "https://github.com/zuccadev-labs/appLoggers"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/apploggers-v0.1.5/apploggers-darwin-arm64"
      sha256 "3c872c8dd568fe342480da6dd8ea5a848b18c508d067b35722262ced97ba39bd"
    else
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/apploggers-v0.1.5/apploggers-darwin-amd64"
      sha256 "773fa3534ef03c432973aa34faafa69abe1afd1fc24c2a2699a0fac63e7c6dbe"
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
