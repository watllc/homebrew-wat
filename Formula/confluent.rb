class Confluent < Formula
  desc "Bundles Kafka, Schema Registry, REST Proxy, Connect, etc."
  homepage "http://www.confluent.io/"
  url "http://packages.confluent.io/archive/3.0/confluent-3.0.1-2.11.zip"
  version "3.0.1"
  sha256 "d5c4835451b583f273942a4848e6af8af59625cfedf83168b51ae42b64ab594e"

  def install
    bin.mkpath
    bin.install Dir["bin/*"]

    share.mkpath
    share.install Dir["share/*"]

    etc.install Dir["etc/*"]
  end

  test do
  end

#  def plist; <<-EOS.undent
#    <?xml version="1.0" encoding="UTF-8"?>
#    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
#    <plist version="1.0">
#    <dict>
#    <key>Label</key>
#      <string>#{plist_name}</string>
#    <key>ProgramArguments</key>
#    <array>
#      <string>#{opt_bin}/example</string>
#      <string>--do-this</string>
#    </array>
#    <key>KeepAlive</key>
#    <true/>
#    </plist>
#    EOS
#  end
end
