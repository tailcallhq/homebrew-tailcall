class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.63.0/tailcall-x86_64-apple-darwin"
    sha256 "e9925c00755b66ffae0279434d4d3fe4de86b7ce8041a0b2c690369f61719879"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.63.0/tailcall-aarch64-apple-darwin"
    sha256 "40b56ddc7952bc0177b57e75c3fb2211650e7d041e9ec38b11934385819d75c7"
  end

  version "v0.63.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
