class ApploggerCli < Formula
  desc "AppLogger telemetry CLI"
  homepage "https://github.com/zuccadev-labs/appLoggers"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/applogger-cli-v0.1.1/applogger-cli-darwin-arm64"
      sha256 "343f32b75a189803c22658f8cfbe23b023102013a1f940e71fa3475de7cee6c6"
    else
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/applogger-cli-v0.1.1/applogger-cli-darwin-amd64"
      sha256 "f2959ea6549404bcb5f0e24c040e3b474fc05ec89fb8188f4011306be22d2f80"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "applogger-cli-darwin-arm64" => "applogger-cli"
    else
      bin.install "applogger-cli-darwin-amd64" => "applogger-cli"
    end
  end
end
