class Apploggers < Formula
  desc "AppLoggers telemetry CLI"
  homepage "https://github.com/zuccadev-labs/appLoggers"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/apploggers-v0.1.4/apploggers-darwin-arm64"
      sha256 "1d444b3db050ca6b4c4360e226540b2b7abee4a62872534d6a183710ee452408"
    else
      url "https://github.com/zuccadev-labs/appLoggers/releases/download/apploggers-v0.1.4/apploggers-darwin-amd64"
      sha256 "16f48bf0d1c1c4b9f1fbbdd5a236944f942028e4320115a7b3dd6d0b02f75825"
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
