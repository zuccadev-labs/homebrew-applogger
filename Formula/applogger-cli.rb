class ApploggerCli < Formula
  desc "AppLogger telemetry CLI"
  homepage "https://github.com/zuccadev-labs/appLoggers"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/applogger-cli-v0.1.0/applogger-cli-darwin-arm64"
      sha256 "cbf39fca4d08246ee5975313a9db888ee518b8e404b33af842c98bb36929c7c8"
    else
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/applogger-cli-v0.1.0/applogger-cli-darwin-amd64"
      sha256 "1919493ed91def3c228761e843e56bf28371bdb61ec93869c0d0a4b810a9731e"
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
