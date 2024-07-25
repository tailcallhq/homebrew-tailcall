class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.98.1/tailcall-x86_64-apple-darwin"
    sha256 "3b4437a88332e9dfa9f8c4877e50dcb9496d85f266a4095aabc6e1d3507fe160"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.98.1/tailcall-aarch64-apple-darwin"
    sha256 "7ed10af6a06020e1689bca3a51834206d13f66ca23f8f7a39c5cc51ecb2f8c4b"
  end

  version "v0.98.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
