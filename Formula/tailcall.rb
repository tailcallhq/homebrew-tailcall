class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"
  url "https://github.com/tailcallhq/tailcall/releases/download/v0.2.0/tailcall-v0.2.0.zip"
  sha256 "afe2f2d6764c14a85ae4feb3e4ad41512ce5b82f8b67d5a102e442e1abdbbd5d"
  version "v0.2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tailcall_cli_main" => "tc"
  end

  test do
    system "#{bin}/tc"
  end
end
