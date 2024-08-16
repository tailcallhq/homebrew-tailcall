class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.5/tailcall-x86_64-apple-darwin"
    sha256 "2f50a5f7fbd7a212982cddd200ecfd6492011225f91c1c0431ad8fbcdbc08f44"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.5/tailcall-aarch64-apple-darwin"
    sha256 "ff564f1125833665630c380380531bdeb55adf0d5d65599c42c8d721259f44e3"
  end

  version "v0.104.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
