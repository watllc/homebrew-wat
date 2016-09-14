class Confluent < Formula
  desc "Confluent Platform"
  homepage "http://www.confluent.io/"
  url "http://packages.confluent.io/archive/3.0/confluent-3.0.1-2.11.zip"
  version "3.0.1"
  sha256 "d5c4835451b583f273942a4848e6af8af59625cfedf83168b51ae42b64ab594e"

  def install
    bin.mkpath
    bin.install Dir["bin/*"]

    share.mkpath
    share.install Dir["share/*"]

    etc.install({"etc" => "confluent"})
  end

  test do
  end
end
