class Olp < Formula
  desc "Use the Command Line Interface (CLI) to access HERE platform services from a command line or with scripts."
  homepage "https://platform.in.here.com/sdk/cli"
  url "https://artifact.api.platform.here.com/v1/references/hrn:here:artifact:::com.here.platform:cli:10.5.125/cli-10.5.125.zip\?apiKey\=84q8N9DRx6YAqyJaXUpr9fhiTnCUIBzvHLpk3QU4Oaw", :using => :curl
  version "2"
  license ""

  def install
    bin.install "olp"
  end

end
