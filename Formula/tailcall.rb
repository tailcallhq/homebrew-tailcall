class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.100.3/tailcall-x86_64-apple-darwin"
    sha256 "6359b4ab963b4e93bb875a1f6744f5c82501702d58fab99d178d2225b27cd0a8"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.100.3/tailcall-aarch64-apple-darwin"
    sha256 "494bc510266dc81653ac35ee66aa89df19d03ba7a3be49a310005dcdd7e90d17"
  end

  version "v0.100.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
