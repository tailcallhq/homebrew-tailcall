class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.56.1/tailcall-x86_64-apple-darwin"
    sha256 "9b54e5b437636fdfe9f6e709708c7c46bfb2a197add9bc166077db13b291c9c4"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.56.1/tailcall-aarch64-apple-darwin"
    sha256 "476bbfdc6e0e9ba63d0ec13420c47ae23f54a372a81c94cb9339df3cd8c7cb91"
  end

  version "v0.56.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
