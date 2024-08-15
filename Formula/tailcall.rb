class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.2/tailcall-x86_64-apple-darwin"
    sha256 "280a4612ec2dd60903a4a014c5df62528c589e722f2e62912bd1506a843a1c8c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.2/tailcall-aarch64-apple-darwin"
    sha256 "0e23bc6a75e87c67a3430940c26d3df222b1b307a76dd20daf3969beba0d5d6d"
  end

  version "v0.104.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
