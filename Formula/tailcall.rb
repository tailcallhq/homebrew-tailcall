class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.98.5/tailcall-x86_64-apple-darwin"
    sha256 "bc3e05a28b4442e9fded5e24ef654cc0ee7179fb6b247be30632bcb40467b67c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.98.5/tailcall-aarch64-apple-darwin"
    sha256 "f880e37d495f013f305aeb3b57885eeee63d20c157badd240187e3daafcaef1a"
  end

  version "v0.98.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
