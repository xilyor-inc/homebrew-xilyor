class Networkstat < Formula
  desc "CLI tool to monitor network interfaces with pretty emoji output"
  homepage "https://github.com/mohamedelleuch777/NetworkStat"
  url "https://github.com/mohamedelleuch777/NetworkStat/releases/download/v1.3.43/NetworkStat-v1.3.43.tar.gz"
  sha256 "d9710390cf4d8ad2edee4c653a73e9dd7094ac89735f45b487be4988cee04de4"
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

