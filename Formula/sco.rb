class Sco < Formula
    desc "sco是c#实现的解释型脚本,是一种高效,轻量,可嵌入的脚本语言,语法类似javascript,类型为弱类型,通过使用基于栈的虚拟机解释字节码来运行."
    homepage "https://github.com/qingfeng346/Scorpio-CSharp"
    license "GPL-3.0"
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.7/sco-2.3.7-osx-x64.zip"
      sha256 "B6F24287EDCCE2872BFE194A75BD286D3D9DD34C5EEBFABB3EE1EA2BF33ECFF5"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.7/sco-2.3.7-osx-arm64.zip"
      sha256 "9361CB4845588DFD7E2C217DD13C13C518F27A9706C7E98269ACEA3EB64AD902"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.7/sco-2.3.7-linux-x64.zip"
      sha256 "621A6C77C24B4B1C348B5A36B1ABDCD2D0F2CEBCA75EA8E340466B1ADE5AE019"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/qingfeng346/Scorpio-CSharp/releases/download/v2.3.7/sco-2.3.7-linux-arm64.zip"
      sha256 "887770420FC866D594919B6F402D2C7FB69558893D68D2C8FF166F5ECF2C5B41"
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
