class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.4/tailcall-x86_64-apple-darwin"
    sha256 "4007d8d80bbe2a577fbcf742f4ecbaa437172165ee6d0fb25d029d8114b7970f"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.4/tailcall-aarch64-apple-darwin"
    sha256 "cb0215422625100c5227e39bb1dbc7f78cf8104ae67574dde091ec45e80aa229"
  end

  version "v0.104.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
