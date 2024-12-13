class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.2.0/tailcall-x86_64-apple-darwin"
    sha256 "c1003b479dd675b4ecb627fa617c039fa4ee8d730998e8058b7e93c8d2f7131d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.2.0/tailcall-aarch64-apple-darwin"
    sha256 "56d62b1af435f3be0bb369260825cd60b8e06186600dda245e68be96e2c3839b"
  end

  version "v1.2.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
