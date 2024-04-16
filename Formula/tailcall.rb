class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.76.1/tailcall-x86_64-apple-darwin"
    sha256 "834aae4e4fcb9c326179769de2a356e50e07e70e7255003f4240880d1439becb"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.76.1/tailcall-aarch64-apple-darwin"
    sha256 "c61b7074a7e93ade6fb3f4c968ecc461f06d39ce22e36b8852e8747e9fd42da5"
  end

  version "v0.76.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
