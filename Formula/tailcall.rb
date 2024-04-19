class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.76.8/tailcall-x86_64-apple-darwin"
    sha256 "b49e0e34f0a26879766ada36de14dc2d51d8b038a5a08f53467f60d9a11ed60d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.76.8/tailcall-aarch64-apple-darwin"
    sha256 "77ad9c014197ede3478eb3f2e4891fd55e113a73a2204b14beb11d8de9aaa04e"
  end

  version "v0.76.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
