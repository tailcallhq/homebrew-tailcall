class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.39.6/tailcall-x86_64-apple-darwin"
    sha256 "7b69a6312245130f7e9c0066865857de9a8f2fc52a1602605d35406e7fd07404"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.39.6/tailcall-aarch64-apple-darwin"
    sha256 "f57f67de3d639ca1714136869d33d99a6bb340dc57b06267514b8fe6c1bf85ac"
  end

  version "v0.39.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
