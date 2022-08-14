class Stools < Formula
    desc "stools"
    homepage "https://github.com/qingfeng346/stools"
    license "GPL-3.0"
    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.2/stools-1.0.2-osx-x64.zip"
      sha256 "0A81275A06AF075D8351B79159183CB52A0B29F46BD9E6138DFD94B45720058A"
    end
    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.2/stools-1.0.2-osx-arm64.zip"
      sha256 "4BD7529B39B7BA76FEB293969138DB75DB8774FE1A9681AA2A3D80FE1A709B19"
    end
    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.2/stools-1.0.2-linux-x64.zip"
      sha256 "A330C1D40F09AAABE47D9078B4593A69DD647D2A8234E7EA5E84CB255D50F4B8"
    end
    if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/qingfeng346/stools/releases/download/v1.0.2/stools-1.0.2-linux-arm64.zip"
      sha256 "5DAC0F13BFB1AA060982C7933AE2BAFF20D502C3709CF6C76DC0AC1DD3221D18"
    end
    def install
      prefix.install Dir["*"]
      system "chmod","+x","#{prefix}/stools"
      bin.install_symlink "#{prefix}/stools"
    end
end
