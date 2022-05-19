class Olp < Formula
  desc "Test"
  homepage "https://github/devtonhere/bottle-test"
  url "https://raw.githubusercontent.com/devtonhere/bottle-test/main/bottle4.zip"
  version "4.0.1"
  license ""

  depends_on "openjdk@8"

  def install
    libexec.install "hello.jar"
    bin.write_jar_script libexec/"hello.jar", "olp"
  end

end
