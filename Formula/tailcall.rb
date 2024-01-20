class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.23.0/tailcall-x86_64-apple-darwin"
    sha256 "0d77de835350a2506d2fcd9c7f8520fd214cb39b8a000ec11d0f4d3cd3b88a12"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.23.0/tailcall-aarch64-apple-darwin"
    sha256 "0875505fe3fbd3545d67d20b0bc53cb471659f284dc8608b6b477a8dc08ffaf5"
  end

  version "v0.23.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
