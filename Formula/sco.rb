class Sco < Formula
    desc "sco是c#实现的解释型脚本,是一种高效,轻量,可嵌入的脚本语言,语法类似javascript,类型为弱类型,通过使用基于栈的虚拟机解释字节码来运行."
    homepage "https://github.com/qingfeng346/Scorpio-CSharp"
    license "GPL-3.0"
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.9/sco-2.3.9-osx-x64.zip"
      sha256 "4F4D889B2FD466F8B63C6E0EE299466D73BD7D04C29A1F67F1249529EBEE6FEB"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.9/sco-2.3.9-osx-arm64.zip"
      sha256 "C407E94DEC6FAC832DD11CF6F357677A361241C359C87E3BF1A757F28A1C8FCC"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.9/sco-2.3.9-linux-x64.zip"
      sha256 "AE0E175BEF600A7BF4F3624C921EC659D7FC05EAFC2A272766B580039EE22C98"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.9/sco-2.3.9-linux-arm64.zip"
      sha256 "ADC276122992012119EFDE7DF1E660996A7EB5E661CA0AE1EF7D244B6CBF00C5"
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
