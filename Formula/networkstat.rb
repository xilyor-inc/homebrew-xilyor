require "language/python/virtualenv"

class Networkstat < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to monitor network interfaces with pretty emoji output"
  homepage "https://github.com/mohamedelleuch777/NetworkStat"
  url "https://github.com/mohamedelleuch777/NetworkStat/archive/refs/tags/v1.3.28.tar.gz"
  sha256 "081f7c27e478b5cfbe9f9a5ae40d87e30ea914bd16bb7966b648ec371a50188f"
  license "Apache-2.0"

  depends_on "python@3.11"

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/8e/7a/618a0d1f2891d9352891dc0dc291ad05db5e0486d0883ea33c354b3b9de3/psutil-5.9.8.tar.gz"
    sha256 "081f7c27e478b5cfbe9f9a5ae40d87e30ea914bd16bb7966b648ec371a50188f"
  end

  def install
    virtualenv_install_with_resources
    man1.install "networkstat.1"
  end

  test do
    system "#{bin}/networkstat", "--version"
  end
end
