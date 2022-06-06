class Stools < Formula
    desc "stools"
    homepage "https://github.com/qingfeng346/stools"
    license "GPL-3.0"
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.1/stools-1.0.1-osx-x64.zip"
      sha256 "F499972D32D3120A9C48971513E8AB359801A34EFF94CEF1EF6ED8184F3C5E41"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.1/stools-1.0.1-osx-arm64.zip"
      sha256 "5214505C430D29ADFA87D68E4930C0813F099521FFB8E0D4500B0D6A2B65DEFD"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.1/stools-1.0.1-linux-x64.zip"
      sha256 "BA8A769C4BF0330A1B7BC311F35EEA3853F8A85B2F70D61D4BD28029998AFD73"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.1/stools-1.0.1-linux-arm64.zip"
      sha256 "79C8DB85C74BA01777B74EBE0742F0A9732109E1618F51ECD2DFC35A735BD4E9"
    end
    def install
      prefix.install Dir["*"]
      system "chmod","+x","#{prefix}/stools"
      bin.install_symlink "#{prefix}/stools"
    end
end
