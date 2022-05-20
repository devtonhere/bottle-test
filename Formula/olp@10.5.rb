class OlpAT105 < Formula
  desc "With the Command Line Interface you can access HERE platform services from a command line or with scripts."
  homepage "platform.in.here.com/sdk/cli"
  url "https://artifact.api.platform.here.com/v1/references/hrn:here:artifact:::com.here.platform:cli:10.5.125/cli-10.5.125.zip\?apiKey\=84q8N9DRx6YAqyJaXUpr9fhiTnCUIBzvHLpk3QU4Oaw"
  version "10.5.125"
  license "Proprietary"

  depends_on "openjdk@8"

  def install
    prefix.install "HERE_NOTICE"
    prefix.install "LICENSE"
    libexec.install "cli_2.12-10.5.125.jar"
    bin.write_jar_script libexec/"cli_2.12-10.5.125.jar", "olp", "-Dfile.encoding=UTF8"
  end

  def test do
    system bin/"olp", "version", "--help"
  end

end
