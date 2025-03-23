class Networkstat < Formula
  desc "CLI tool to monitor network interfaces with pretty emoji output"
  homepage "https://github.com/mohamedelleuch777/NetworkStat"
  url "https://github.com/mohamedelleuch777/NetworkStat/releases/download/v1.3.37/NetworkStat-v1.3.37.tar.gz"
  sha256 "8749b84f512a63f8e5171b52192a51ff082fcd18fbaafe3b315b5549a578baed"
  license "Apache-2.0"

  def install
    bin.install "networkstat"
    man1.install "networkstat.1"
  end

  test do
    system "#{bin}/networkstat", "--version"
  end
end
