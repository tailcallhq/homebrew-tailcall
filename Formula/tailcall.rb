class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"
  url "https://github.com/tailcallhq/tailcall/releases/download/v0.7.0/tailcall-v0.7.0.zip"
  sha256 "e33ebdcc4ab0e53946232682b22a704f716f7cad0509d9afd55a72afd4cf0395"
  version "v0.7.0"

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
