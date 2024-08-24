class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.17/tailcall-x86_64-apple-darwin"
    sha256 "3a80f89e34d4238ce2dfa81b0fe832102e458d4c58b2a7a4b0648dbff037216a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.17/tailcall-aarch64-apple-darwin"
    sha256 "ab42020690d3a80dd5f6def3c3278a7ac3f7b3693d8c95bcde2c1b36672d8122"
  end

  version "v0.104.17"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
