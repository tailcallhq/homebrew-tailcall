class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.0/tailcall-x86_64-apple-darwin"
    sha256 "7fda5922c7bf7cc5172f543faf5dc22298681eb82308d4991b48334927e39dc9"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.0/tailcall-aarch64-apple-darwin"
    sha256 "833d1a046c665c3aa85d81280844a50bda68a9d6735c58bdf4b0db9a7736f2c5"
  end

  version "v0.104.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
