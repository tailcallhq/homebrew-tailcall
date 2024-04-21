class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.76.11/tailcall-x86_64-apple-darwin"
    sha256 "35f68ca823d00b5f4a132af89c1ca05bf8126b5568c0714087085d7f21c8e7c5"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.76.11/tailcall-aarch64-apple-darwin"
    sha256 "21476847cd4985e23bee4b7f1e8d82116255c6737637d7400e2a5956a0d1dee5"
  end

  version "v0.76.11"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
