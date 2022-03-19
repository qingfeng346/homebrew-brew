class Stools < Formula
    desc "stools"
    homepage "https://github.com/qingfeng346/stools"
    license "GPL-3.0"
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.0/stools-1.0.0-osx-x64.zip"
      sha256 "E76ACADFAEDBE83E7E3424BCF7CAFA4EAC758862F069D121E40D882CE959E350"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.0/stools-1.0.0-osx-arm64.zip"
      sha256 "DA879403FEBC91F916BD5702F1BA6FB5274BBCBC0ACD8375908063CC4748BA66"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.0/stools-1.0.0-linux-x64.zip"
      sha256 "D8A21B42CA16F6EED42C5755A35533D666D3742D082B3CB9614A2DA684215BDF"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.0/stools-1.0.0-linux-arm64.zip"
      sha256 "70D1A495086594B0608BF2F95D71B92159D72FC4B081C8E2880A5F18BCA04946"
    end
    def install
      prefix.install Dir["*"]
      system "chmod","+x","#{prefix}/stools"
      bin.install_symlink "#{prefix}/stools"
    end
end
