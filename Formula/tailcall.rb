class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.62.4/tailcall-x86_64-apple-darwin"
    sha256 "0e320e62989740fe2ed554989d259d11b848cfe2538f574e089eb0d7f45229ee"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.62.4/tailcall-aarch64-apple-darwin"
    sha256 "d4898b858c0ed53adb26b61013cd71df7a9f91684e36d6ee20330a81f03eba80"
  end

  version "v0.62.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
