class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.12/tailcall-x86_64-apple-darwin"
    sha256 "9a12e74a207131db51d24e49d34d50047e4865cdcd0379847380bfa07ca46c1c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.12/tailcall-aarch64-apple-darwin"
    sha256 "a7a6d30cff026a1acf0b6c5cc264474fb5dbbc715ab231a5f3f09aa6826a26c0"
  end

  version "v0.95.12"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
