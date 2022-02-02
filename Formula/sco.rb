class Sco < Formula
    desc "sco是c#实现的解释型脚本,是一种高效,轻量,可嵌入的脚本语言,语法类似javascript,类型为弱类型,通过使用基于栈的虚拟机解释字节码来运行."
    homepage "https://github.com/qingfeng346/Scorpio-CSharp"
    license "GPL-3.0"
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.6/sco-2.3.6-osx-x64.zip"
      sha256 "163ED2E81994148D7C0064183049A1A5EAAF08363636E360E172262CD177D76F"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.6/sco-2.3.6-osx-arm64.zip"
      sha256 "D3BBBBEA14E77D71341FA74792ED72865CF75E9D6E95B618F92BB94E962CD93A"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.6/sco-2.3.6-linux-x64.zip"
      sha256 "77C49EBFEC1C2DE676CFD587B018E294B72559B4B7F5E7A31E40E670F8D74742"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.6/sco-2.3.6-linux-arm64.zip"
      sha256 "41894B831C0E02416E8641B33DAC08FF98F356DA799330C5937326CCD77C32FB"
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