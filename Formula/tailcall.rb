class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.13/tailcall-x86_64-apple-darwin"
    sha256 "9d67764f0ef5ef5c70546095edd9168194baffaf432053ebf61d1ba0666c5d36"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.13/tailcall-aarch64-apple-darwin"
    sha256 "3934396c04b4b4e6cd9ca1f157d39529de4f7173693cf5ae2f94fce74369b1dd"
  end

  version "v0.104.13"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
