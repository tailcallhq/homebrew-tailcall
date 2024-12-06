class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.135.5/tailcall-x86_64-apple-darwin"
    sha256 "a6c2b1d1dcd433930ef3425bd5f69214e353b23e531f35b30240662f71ecd330"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.135.5/tailcall-aarch64-apple-darwin"
    sha256 "b11cce5fd4b1a619c65d3150d87f8d455761db2f30658efb79050a30084575d9"
  end

  version "v0.135.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
