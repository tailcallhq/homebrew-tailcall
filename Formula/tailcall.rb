class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.92.1/tailcall-x86_64-apple-darwin"
    sha256 "7a603c53625121431ad900ba8fc5279db259ddaf93918d9c0bd2247251e3fc69"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.92.1/tailcall-aarch64-apple-darwin"
    sha256 "58a4379b8caea2be5be33af6bb9f47e02869c6727206ec825c80680a8a991329"
  end

  version "v0.92.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
