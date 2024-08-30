class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.109.0/tailcall-x86_64-apple-darwin"
    sha256 "95cb1e50b954de2444d995fc4d640c6153f1d71de8d856aa7108ce2bde3960a5"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.109.0/tailcall-aarch64-apple-darwin"
    sha256 "b1e1c69127f611ed64cc7fdf255088c3a5f7f98cc443ea4ddc1076587d86ef9e"
  end

  version "v0.109.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
