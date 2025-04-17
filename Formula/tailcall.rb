class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.21/tailcall-x86_64-apple-darwin"
    sha256 "f373e79e82b7efd784cf360d07eeed4a685696bc74830c0ff530298786ec5493"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.21/tailcall-aarch64-apple-darwin"
    sha256 "a2230c64e4bd612f95478d86b049378051adaed41fb004b1212e12e2f60a6e97"
  end

  version "v1.5.21"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
