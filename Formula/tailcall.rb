class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.46.1/tailcall-x86_64-apple-darwin"
    sha256 "b5de437c63c34e1b9399bb962b03656cd329814198b2034c45c2477c99b77582"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.46.1/tailcall-aarch64-apple-darwin"
    sha256 "06997cc25ad2169dc49925f2e49f68125d377c9294ea3849028e6eabc6289ae9"
  end

  version "v0.46.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
