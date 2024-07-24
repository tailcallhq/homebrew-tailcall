class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.97.3/tailcall-x86_64-apple-darwin"
    sha256 "1d16b896588487de2c19384d38f183bca0ef69107da520bb333fa519ce4b3747"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.97.3/tailcall-aarch64-apple-darwin"
    sha256 "ada6551c255ad27b3192d805494a0e323f4b3e3f870a80977941e98d2838c85a"
  end

  version "v0.97.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
