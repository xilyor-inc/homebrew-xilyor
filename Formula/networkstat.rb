class Networkstat < Formula
  desc "CLI tool to monitor network interfaces with pretty emoji output"
  homepage "https://github.com/Xilyor/networkstat"
  url "https://github.com/Xilyor/networkstat/archive/refs/tags/v1.3.19.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
