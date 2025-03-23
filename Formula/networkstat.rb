class Networkstat < Formula
  desc "CLI tool to monitor network interfaces with pretty emoji output"
  homepage "https://github.com/mohamedelleuch777/NetworkStat"
  url "https://github.com/mohamedelleuch777/NetworkStat/releases/download/v1.3.46/NetworkStat-v1.3.46.tar.gz"
  sha256 "68c63be56f0e939cd08fbf6524ba0e403beb360827ac6aa454f7ef98733b1dda"
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

