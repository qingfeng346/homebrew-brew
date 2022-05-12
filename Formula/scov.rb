class Scov < Formula
    desc "scov"
    homepage "https://github.com/qingfeng346/scov"
    license "GPL-3.0"
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/ScorpioConversion/releases/download/v1.0.1/scov-1.0.1-osx-x64.zip"
      sha256 "70B99C8420C5BE9D41ABABCC5ED3F091E2D90C8EDB56B8D4A36D3D15BC062AF2"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/qingfeng346/ScorpioConversion/releases/download/v1.0.1/scov-1.0.1-osx-arm64.zip"
      sha256 "69518F153064AC044B9FE678D40AC9146E8D07F79B6C5F783C360D07709798E8"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/ScorpioConversion/releases/download/v1.0.1/scov-1.0.1-linux-x64.zip"
      sha256 "C68D624A6409C814104C25CA9703C7602B05058A54600A93AA375D487209934F"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/qingfeng346/ScorpioConversion/releases/download/v1.0.1/scov-1.0.1-linux-arm64.zip"
      sha256 "6DB5CEED59DCE57FEAAAC4B54E396F454A7237C8626046518128B99138A25D00"
    end
    def install
      prefix.install Dir["*"]
      system "chmod","+x","#{prefix}/scov"
      bin.install_symlink "#{prefix}/scov"
    end
end
