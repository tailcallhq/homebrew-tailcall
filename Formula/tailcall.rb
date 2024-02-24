class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.40.2/tailcall-x86_64-apple-darwin"
    sha256 "702ed88cc8ea430f531ad9a023d3b3ce2d846f21fd022e9f0e28b97291b0a95d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.40.2/tailcall-aarch64-apple-darwin"
    sha256 "cfb0468a66f30d9046470d80ada3a39d665339fc06259f71404ae1133b1abf84"
  end

  version "v0.40.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
