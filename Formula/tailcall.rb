class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.78.11/tailcall-x86_64-apple-darwin"
    sha256 "c578f74c6c2e407c38deff26f3741e69b0fa3e2269db9c1e1f58ad7f2880ad21"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.78.11/tailcall-aarch64-apple-darwin"
    sha256 "a3ebacfc6d6103b21e1abd73569b517c21a022e890c5a3e4911fdc2497c74faf"
  end

  version "v0.78.11"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
