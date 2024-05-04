class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.81.2/tailcall-x86_64-apple-darwin"
    sha256 "66b978ecfd664c9789bfc562814acc82a437cb3848720daabc28599a3727dd87"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.81.2/tailcall-aarch64-apple-darwin"
    sha256 "6ae5baf253b443cb161bfe5253b2d5b55c4300aa01666ad0051bb6111cf9989c"
  end

  version "v0.81.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
