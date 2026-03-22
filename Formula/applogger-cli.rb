class ApploggerCli < Formula
  desc "AppLogger telemetry CLI"
  homepage "https://github.com/zuccadev-labs/appLoggers"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/applogger-cli-v0.1.2/applogger-cli-darwin-arm64"
      sha256 "18e78c3b0a4c12f40f80354948067658d5f721a7df13a9654460a57812b3ccd0"
    else
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/applogger-cli-v0.1.2/applogger-cli-darwin-amd64"
      sha256 "4a0b046d506a57e5f757e0242e55ed74d5c6f48f87846a2853aae740450d0e06"
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
