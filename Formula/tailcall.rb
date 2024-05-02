class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.80.1/tailcall-x86_64-apple-darwin"
    sha256 "fe101afd459a9fba4f2b82476e1458714a264a60b532ef93b3f2b01001bf4916"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.80.1/tailcall-aarch64-apple-darwin"
    sha256 "3296c85d363c41c654553f3e7abf0b0760f5cfb7da685dfd5137d2e2c460b25f"
  end

  version "v0.80.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
