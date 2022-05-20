class OlpAT111 < Formula
  desc "With the Command Line Interface you can access HERE platform services from a command line or with scripts."
  homepage "platform.in.here.com/sdk/cli"
  url "https://artifact.api.platform.here.com/v1/references/hrn:here:artifact:::com.here.platform:cli:11.1.0/cli-11.1.0.zip\?apiKey\=84q8N9DRx6YAqyJaXUpr9fhiTnCUIBzvHLpk3QU4Oaw"
  version "11.1.0"
  license "Proprietary"

  depends_on "openjdk@8"

  def install
    prefix.install "HERE_NOTICE"
    prefix.install "LICENSE"
    libexec.install "cli_2.12-11.1.0.jar"
    bin.write_jar_script libexec/"cli_2.12-11.1.0.jar", "olp", "-Dfile.encoding=UTF8"
  end

  test do
    system bin/"olp", "version", "--help"
  end

end
