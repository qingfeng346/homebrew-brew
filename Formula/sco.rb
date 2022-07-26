class Sco < Formula
    desc "sco是c#实现的解释型脚本,是一种高效,轻量,可嵌入的脚本语言,语法类似javascript,类型为弱类型,通过使用基于栈的虚拟机解释字节码来运行."
    homepage "https://github.com/qingfeng346/Scorpio-CSharp"
    license "GPL-3.0"
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.10/sco-2.3.10-osx-x64.zip"
      sha256 "E91DDD6A0FDEEE5FB66A7BD5F0E44FBF7BB38752E22067A5A03BC19D8F005F49"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.10/sco-2.3.10-osx-arm64.zip"
      sha256 "8622133E4F6F9A9B11EE1A19226A09D3A3F51FDA0820C128A68823F061A39A23"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.10/sco-2.3.10-linux-x64.zip"
      sha256 "F2E66A8E9453B3D05E67C6A02399290371A0A9F6FF3675FF9D8BA68BD048A93C"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.10/sco-2.3.10-linux-arm64.zip"
      sha256 "90A1425341F215C56BC8E06233BFBD65F27F7FC485412E44BF9B782B41B2D64E"
    end
    def install
      prefix.install Dir["*"]
      system "chmod","+x","#{prefix}/sco"
      bin.install_symlink "#{prefix}/sco"
    end
    test do
      system "#{prefix}/sco","version"
    end
end
