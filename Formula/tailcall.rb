class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"
  url "https://github.com/tailcallhq/tailcall/releases/download/v0.4.0/tailcall-v0.4.0.zip"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  version "v0.4.0"

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
