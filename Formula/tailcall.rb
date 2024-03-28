class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.69.1/tailcall-x86_64-apple-darwin"
    sha256 "9b297dd2c465f103e66c6774c2c1df1deafb42cf71d616d3eb27a1665618a4da"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.69.1/tailcall-aarch64-apple-darwin"
    sha256 "19b71b193004707f9e4bcf7adc26d308fc392fa556a32e47f0db8d28502164a4"
  end

  version "v0.69.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
