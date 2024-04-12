class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.17/tailcall-x86_64-apple-darwin"
    sha256 "886cc65e5b8acf6642a8e85d3f55729ca71239e069c63de7735a12a2339b3b03"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.17/tailcall-aarch64-apple-darwin"
    sha256 "29f99f734a9df4b10156db466bd50897726558d1312ebd50e9a828699e12352f"
  end

  version "v0.74.17"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
