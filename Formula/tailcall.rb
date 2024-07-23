class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.97.1/tailcall-x86_64-apple-darwin"
    sha256 "c74dc5e72b03374c74ad48951341ead4869d835273e3bb5444b0bcada070af43"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.97.1/tailcall-aarch64-apple-darwin"
    sha256 "f62cdb692753141f0c5363cb1c39a88ea6520db0e8a994a777237de740df8a7c"
  end

  version "v0.97.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
