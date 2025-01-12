class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.14/tailcall-x86_64-apple-darwin"
    sha256 "b31d38dc89e61e2089a5392a39119f3cbe37837534e8638f582c72c10c5cb83b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.14/tailcall-aarch64-apple-darwin"
    sha256 "908366295cd7ce1ed242bda5fe914a4f8295531e9aec923994af2d5d3b95ba39"
  end

  version "v1.4.14"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
