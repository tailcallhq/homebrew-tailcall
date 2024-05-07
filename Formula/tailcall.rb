class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.7/tailcall-x86_64-apple-darwin"
    sha256 "279f21dcbaf769deffbcf588535ea37d19bd0cdc860c056572a55dc8aa290880"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.7/tailcall-aarch64-apple-darwin"
    sha256 "70bd57b6f040f2393f9e57f6cefe366409cf75d7401bc9bad0fbdae450e7d642"
  end

  version "v0.82.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
