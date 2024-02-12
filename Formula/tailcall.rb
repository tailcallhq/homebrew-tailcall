class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.37.5/tailcall-x86_64-apple-darwin"
    sha256 "86c60bbbd082f60f06df90e6af00cc093309b2dbdd8849659777cf0840070323"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.37.5/tailcall-aarch64-apple-darwin"
    sha256 "2cad1cdc226840ea08b61d954a0b1376dcb40ab73bcdbe8ac270164649e3ee1b"
  end

  version "v0.37.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
