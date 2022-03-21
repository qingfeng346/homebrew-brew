class Stools < Formula
    desc "stools"
    homepage "https://github.com/qingfeng346/stools"
    license "GPL-3.0"
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.0/stools-1.0.0-osx-x64.zip"
      sha256 "0B1BDFF5C3C2472A0F4332E57E76ABF74D582F341BDDCD13CFEF5492BE661803"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.0/stools-1.0.0-osx-arm64.zip"
      sha256 "3AB569C56BDC75DDA30A7C31FD2E129CF0AF7029FA2141F7BEAC5198D3A2CFAE"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.0/stools-1.0.0-linux-x64.zip"
      sha256 "EDD50C6CD10DE344E9E5C657CF95C1A6FA0B21D7621DC37E97D30C9E97882569"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.0/stools-1.0.0-linux-arm64.zip"
      sha256 "031683227B36061C800D729288B78A23F236B218039F0627DA3389F83D8962AA"
    end
    def install
      prefix.install Dir["*"]
      system "chmod","+x","#{prefix}/stools"
      bin.install_symlink "#{prefix}/stools"
    end
end
