class Networkstat < Formula
  desc "CLI tool to monitor network interfaces with pretty emoji output"
  homepage "https://github.com/mohamedelleuch777/NetworkStat"
  url "https://github.com/mohamedelleuch777/NetworkStat/releases/download/1.4.1/NetworkStat-1.4.1.tar.gz"
  sha256 "d3a60b2babf1ee19b334885abb66e531ac2c7989e9e732f8330798e1a0e15f9a"
  license "Apache-2.0"

  depends_on "ldc" # D language compiler

  def install
    # Compile from source
    system "ldc2", "-O", "-release", "-boundscheck=off", "-of=networkstat", "main.d"

    # Install compiled binary
    bin.install "networkstat"

    # Optional: install man page
    man1.install "networkstat.1" if File.exist?("networkstat.1")
  end

  test do
    system "#{bin}/networkstat", "--version"
  end
end

