class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.135.2/tailcall-x86_64-apple-darwin"
    sha256 "87499ec48a3871ad411b2de7ec0b00d6fde95230e2c12dfb01be4007c7fefa80"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.135.2/tailcall-aarch64-apple-darwin"
    sha256 "200b636a3485635b5ae5d7bb1ded960281a5fd90b28c17c2911cbe39a11f22dc"
  end

  version "v0.135.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
