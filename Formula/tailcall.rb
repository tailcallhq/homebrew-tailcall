class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.73.0/tailcall-x86_64-apple-darwin"
    sha256 "e6e5b21a1f246426b1696de74c849b7f59f325aca396bea2c17b1e2165f5d8d8"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.73.0/tailcall-aarch64-apple-darwin"
    sha256 "66823ddbc3e8fb19450ff64a2a79e589c28c649bf062cd6dc9070478f341678f"
  end

  version "v0.73.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
