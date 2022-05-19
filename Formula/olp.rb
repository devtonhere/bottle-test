class Olp < Formula
  desc "Test"
  homepage "https://github/devtonhere/bottle-test"
  url "https://raw.githubusercontent.com/devtonhere/bottle-test/main/bottle.zip", :using => :curl
  version "0.0.1"
  license ""

  depends_on "openjdk@8"

  def install
    bin.install "hello-shawn"
    bin.install "hello.jar"
  end

end
