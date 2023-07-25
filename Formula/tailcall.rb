class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"
  url "https://github.com/tailcallhq/tailcall/releases/download/v0.5.1/tailcall-v0.5.1.zip"
  sha256 "c91724c8d98bcd95c90adb09bee0cef9170595aa77e7726fcbb51518eb986ddf"
  version "v0.5.1"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tailcall_cli_main" => "tc"
    bin.install_symlink "#{libexec}/bin/tailcall_server_main" => "tc-server"
  end

  test do
    system "#{bin}/tc"
  end
end
