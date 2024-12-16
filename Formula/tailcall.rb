class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.0/tailcall-x86_64-apple-darwin"
    sha256 "261de7d38d044748edd295d05b580a0e9e04712f6c2fe3c87acd29ad087f5f5e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.0/tailcall-aarch64-apple-darwin"
    sha256 "53d02a539e15d8b560c3fa415337136d29367c1e4cfbf5743440f5e62fc46a74"
  end

  version "v1.4.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
