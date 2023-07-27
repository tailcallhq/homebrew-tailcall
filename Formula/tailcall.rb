class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"
  url "https://github.com/tailcallhq/tailcall/releases/download/v0.6.0/tailcall-v0.6.0.zip"
  sha256 "e15c656e595b5e35b3afc6c36857f7ce5ea285fd3a45dddd8def6eb2f7f0d12e"
  version "v0.6.0"

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
