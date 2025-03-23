class Networkstat < Formula
  desc "CLI tool to monitor network interfaces with pretty emoji output"
  homepage "https://github.com/mohamedelleuch777/NetworkStat"
  url "https://github.com/mohamedelleuch777/NetworkStat/releases/download/v1.3.29/NetworkStat-v1.3.29.tar.gz"
  sha256 "5014bfcc679b8bb8363bb2ea49f7278749a69a53a2b95a7fcf7e11ec768183b5"
  license "Apache-2.0"

  def install
    bin.install "networkstat"
    man1.install "networkstat.1"
  end

  test do
    system "#{bin}/networkstat", "--version"
  end
end
