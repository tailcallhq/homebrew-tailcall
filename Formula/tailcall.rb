class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.17.0/tailcall-x86_64-apple-darwin"
    sha256 "0ab5b86c5f59a7dccbc09d0007321d33551f244d3eb73550ed2ef5e76fca2abd"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.17.0/tailcall-aarch64-apple-darwin"
    sha256 "d94251e422563be47710a677965dd2dad09e0dc48569252851deeef610621215"
  end

  version "v0.17.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
