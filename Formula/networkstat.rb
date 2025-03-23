class Networkstat < Formula
  desc "CLI tool to monitor network interfaces with pretty emoji output"
  homepage "https://github.com/mohamedelleuch777/NetworkStat"
  url "https://github.com/mohamedelleuch777/NetworkStat/archive/refs/tags/v1.3.29.tar.gz"
  sha256 "8749b84f512a63f8e5171b52192a51ff082fcd18fbaafe3b315b5549a578baed"
  license "Apache-2.0"

  depends_on "python@3.11"

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python3.11/site-packages"
    system Formula["python@3.11"].opt_bin/"pip3", "install", "psutil", "--target=#{libexec}"
    bin.install "dist/networkstat"
    (bin/"networkstat").write_env_script libexec/"networkstat.py", PYTHONPATH: ENV["PYTHONPATH"]
    man1.install "networkstat.1"
  end

  test do
    system "#{bin}/networkstat", "--version"
  end
end

