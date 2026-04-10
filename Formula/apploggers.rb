class Apploggers < Formula
  desc "AppLoggers telemetry CLI"
  homepage "https://github.com/zuccadev-labs/appLoggers"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/apploggers-v0.2.1/apploggers-darwin-arm64"
      sha256 "7c5be02f03dc5901d769c95627185676c8dba592eb330aa6f597b1ea6a097a60"
    else
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/apploggers-v0.2.1/apploggers-darwin-amd64"
      sha256 "e82c10e1214f261eb4016cc51aeb5e0a6200fea3a44833b8bb877233d398729d"
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
