class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.27/tailcall-x86_64-apple-darwin"
    sha256 "9e8fe1b547702e801bdf820758b6a719c18a44a6e03f857ebb875e27b2ee53e8"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.27/tailcall-aarch64-apple-darwin"
    sha256 "bf4b532ee24bbe492669877b7b39ff1fefecf5fd9ba08b6826617ced4db4d9f8"
  end

  version "v0.99.27"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
