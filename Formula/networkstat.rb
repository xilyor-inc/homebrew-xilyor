class Networkstat < Formula
  desc "CLI tool to monitor network interfaces with pretty emoji output"
  homepage "https://github.com/mohamedelleuch777/NetworkStat"
  url "https://github.com/mohamedelleuch777/NetworkStat/archive/refs/tags/v1.3.29.tar.gz"
  sha256 "14906df0c044fdceb27711adb44a736149316a1b04a376c7dfeec97db8d0ad6a"
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

