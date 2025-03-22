class Networkstat < Formula
  desc "CLI tool to monitor network interfaces with pretty emoji output"
  homepage "https://github.com/mohamedelleuch777/NetworkStat"
  url "https://github.com/mohamedelleuch777/NetworkStat/archive/refs/tags/v1.3.25.tar.gz"
  sha256 "1f507e5ccce1907d3e709d68435566486272c7af78c2b4cd67475d01a30b999a"
  license "Apache-2.0"

  depends_on "python@3.11"

  def install
    bin.install "networkstat.py" => "networkstat"
    man1.install "networkstat.1"
  end

  test do
    system "#{bin}/networkstat", "--version"
  end
end
