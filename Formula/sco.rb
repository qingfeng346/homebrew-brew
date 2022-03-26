class Sco < Formula
    desc "sco是c#实现的解释型脚本,是一种高效,轻量,可嵌入的脚本语言,语法类似javascript,类型为弱类型,通过使用基于栈的虚拟机解释字节码来运行."
    homepage "https://github.com/qingfeng346/Scorpio-CSharp"
    license "GPL-3.0"
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.8/sco-2.3.8-osx-x64.zip"
      sha256 "ECB06EFD94E731847A24189E20ADF8BD753AC318275A1BAD412FB42272FD07CC"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.8/sco-2.3.8-osx-arm64.zip"
      sha256 "E7F8B5310BFEF9B65D6E66A6348F85135C0EFA35EA069A728A2CDC4232459371"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.8/sco-2.3.8-linux-x64.zip"
      sha256 "275404E76473DE4AB913B6E7A62C1B70B1E32CD294F29BEDB6F0D1C5E102AA80"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.8/sco-2.3.8-linux-arm64.zip"
      sha256 "8B04F683DB347AB3454AC4C2E7BB85337355814FF8E0AF719846ED859A1E17CF"
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
