class PantheonTerminus < Formula
  desc "Pantheon Management Tool"
  homepage "https://github.com/pantheon-systems/terminus/"
  url "https://github.com/pantheon-systems/terminus/releases/download/2.4.0/terminus.phar"
  sha256 "8fd645bfe5362c21b1e2441d0db3ecdc612294646590a7fc13f16190e0573575"
  license "MIT"

  bottle :unneeded

  def install
    bin.install "terminus.phar" => "terminus"
  end

  test do
    system "#{bin}/terminus", "--version"
  end
end
