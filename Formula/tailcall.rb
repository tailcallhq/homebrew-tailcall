class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.85.6/tailcall-x86_64-apple-darwin"
    sha256 "f280839945d41015561ddcdac521a4e611a866ce2eaec3ab3426a39af77e5191"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.85.6/tailcall-aarch64-apple-darwin"
    sha256 "d3bfc9c77fd8d45ee35b018c5c26eb306500a1bdb4960d457f9fbb39006ff614"
  end

  version "v0.85.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
