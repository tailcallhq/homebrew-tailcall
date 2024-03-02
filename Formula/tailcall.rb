class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.42.0/tailcall-x86_64-apple-darwin"
    sha256 "15ccd846e165d64f9b39dba703b20bc3de7db19fdf7d8cea8eb3239bdf63da55"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.42.0/tailcall-aarch64-apple-darwin"
    sha256 "e7ad34a9a2b08bdee37b18d99932b3fd5e990fe684c2747c9c17a53d4fc568e1"
  end

  version "v0.42.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
