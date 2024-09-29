class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.116.1/tailcall-x86_64-apple-darwin"
    sha256 "26c17bf269dc8730ab620c76622437c26196171a057a3d58ae741f845ad7b3e8"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.116.1/tailcall-aarch64-apple-darwin"
    sha256 "ea5936bf58dd8b5bfaf7cb9acedb7ec969786b1fe323dde09d3c0aa855d00c77"
  end

  version "v0.116.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
