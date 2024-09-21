class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.112.3/tailcall-x86_64-apple-darwin"
    sha256 "093a1ebf9ab68408af02f3abae2cb519d8ea77edffef341e4d42415d3fd1763d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.112.3/tailcall-aarch64-apple-darwin"
    sha256 "b6f0046f609aea2b9e0ddbf6dddb664b27ad9f9f36154addfdeec9ed538d7313"
  end

  version "v0.112.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
