class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"
  url "https://github.com/tailcallhq/tailcall/releases/download/v0.5.0/tailcall-v0.5.0.zip"
  sha256 "5cabccd34964406c8867983d79b3e96d0a31490014d7faf0b52bb2480cf203bd"
  version "v0.5.0"

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
