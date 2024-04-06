class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.5/tailcall-x86_64-apple-darwin"
    sha256 "d6e119a5c380b6890846316073e4eee99d27865aa68f7c51f813ecdabde13d6a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.5/tailcall-aarch64-apple-darwin"
    sha256 "5937a55cec85206a794535d0bbbe685351a7016466dc1471f0e957d928d8c0bf"
  end

  version "v0.74.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
