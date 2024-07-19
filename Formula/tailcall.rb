class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.15/tailcall-x86_64-apple-darwin"
    sha256 "1b5b8b1fe5d37b340308152d0597882805e7de24f226c79e6eab6b0108eafa86"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.15/tailcall-aarch64-apple-darwin"
    sha256 "e9ae6e1aaec63c0e8e458b5bc99ad383ede14ad778084d000032011d2e3a61d5"
  end

  version "v0.96.15"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
