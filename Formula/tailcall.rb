class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.45.1/tailcall-x86_64-apple-darwin"
    sha256 "c66e5a34f499df65d2598d758fb2fc8183cff1ee1af94814d96569b5e9216177"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.45.1/tailcall-aarch64-apple-darwin"
    sha256 "82683f4dda468b236cd544884ec6a50f89e6764eb78c612f1cdf47b851605021"
  end

  version "v0.45.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
