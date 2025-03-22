require "language/python/virtualenv"

class Networkstat < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to monitor network interfaces with pretty emoji output"
  homepage "https://github.com/mohamedelleuch777/NetworkStat"
  url "https://github.com/mohamedelleuch777/NetworkStat/archive/refs/tags/v1.3.25.tar.gz"
  sha256 "1f507e5ccce1907d3e709d68435566486272c7af78c2b4cd67475d01a30b999a"
  license "Apache-2.0"

  depends_on "python@3.11"

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/8e/7a/618a0d1f2891d9352891dc0dc291ad05db5e0486d0883ea33c354b3b9de3/psutil-5.9.8.tar.gz"
    sha256 "cf2f9ef6e85dd72a6e41b1de7c1ce938c1c89c0bbac8447a54610f13f2c9bb0e"
  end

  def install
    virtualenv_install_with_resources
    man1.install "networkstat.1"
  end

  test do
    system "#{bin}/networkstat", "--version"
  end
end
