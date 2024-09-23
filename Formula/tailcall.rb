class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.113.2/tailcall-x86_64-apple-darwin"
    sha256 "244ed00bd31ca915e9da21a64c3b78417dffe36328bb9678d9ec6ab19cf89507"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.113.2/tailcall-aarch64-apple-darwin"
    sha256 "e5d2fa1bd93417109992f24448eab723740d1d0b406f1310089c1a0a8311899e"
  end

  version "v0.113.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
