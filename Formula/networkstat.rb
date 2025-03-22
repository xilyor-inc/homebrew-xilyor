class Networkstat < Formula
  desc "CLI tool to monitor network interfaces with pretty emoji output"
  homepage "https://github.com/mohamedelleuch777/NetworkStat"
  url "https://github.com/mohamedelleuch777/NetworkStat/archive/refs/tags/v1.3.19.tar.gz"
  sha256 "5bad19cc1716a8a1b0014fe2c8cf4c757a0b8fb2df8e2e7b4b0274c6d4da9215"
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
