class Sco < Formula
    desc "sco是c#实现的解释型脚本,是一种高效,轻量,可嵌入的脚本语言,语法类似javascript,类型为弱类型,通过使用基于栈的虚拟机解释字节码来运行."
    homepage "https://github.com/qingfeng346/Scorpio-CSharp"
    license "GPL-3.0"
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.6.0/sco-2.6.0-osx-x64.zip"
      sha256 "FD8AE157F8ED9FE1E43E3B7AD9E57D410D6EFEDE982292BFCB4B15380D784DE9"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.6.0/sco-2.6.0-osx-arm64.zip"
      sha256 "C7E140187E5D384F10C9D6B1ED73A7B92521F9A8EA86602A440F3782B34AC9B4"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.6.0/sco-2.6.0-linux-x64.zip"
      sha256 "0B94E60F553D39620859CC34A7B434207F26D7CE0AF766C66BA7FC0E707A8FAB"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.6.0/sco-2.6.0-linux-arm64.zip"
      sha256 "2F91C024E6EE0EC81CB832A6B0F7C95C779C81FB96AC23F5C55E063A4E1EEAAD"
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
