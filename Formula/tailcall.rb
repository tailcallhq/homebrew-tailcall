class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.9/tailcall-x86_64-apple-darwin"
    sha256 "4ecf5c413c6083eb4b4426d00b37efdb89f2918c77c912cb9b27c47031c13b52"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.9/tailcall-aarch64-apple-darwin"
    sha256 "20aef1fe1d4e99bfa31c6f6876dc23cff689c527867eae259a7c1469c8d43a54"
  end

  version "v0.121.9"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
