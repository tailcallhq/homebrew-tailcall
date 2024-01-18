class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.21.0/tailcall-x86_64-apple-darwin"
    sha256 "c7db45c4734823685d83bd34479ae6ecba09c1d9be765493bb655838ca09dd86"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.21.0/tailcall-aarch64-apple-darwin"
    sha256 "b6d141ed736e00ed29cc35907b19cdcf8d06baa5f329ecca606b12d88c4809ba"
  end

  version "v0.21.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
