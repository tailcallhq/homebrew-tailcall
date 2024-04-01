class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.71.1/tailcall-x86_64-apple-darwin"
    sha256 "7f8ebd209ac1f0b98f6eb6a4ebe34eba02ca56fd60c14d488cf0e32c6fde6eaa"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.71.1/tailcall-aarch64-apple-darwin"
    sha256 "3e35708aa206f0fe2b282ac266012f827d3ebff5818b7c6ea4404975b2a15337"
  end

  version "v0.71.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
