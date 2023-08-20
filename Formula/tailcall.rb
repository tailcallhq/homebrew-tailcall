class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"
  url "https://github.com/tailcallhq/tailcall/releases/download/v0.7.1/tailcall-v0.7.1.zip"
  sha256 "2389f0a7abb066c825651cfd74f8b4533ec1c2b294d79b9bc8c1a87a71959fc1"
  version "v0.7.1"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tailcall" => "tc"
  end

  test do
    system "#{bin}/tc"
  end
end
