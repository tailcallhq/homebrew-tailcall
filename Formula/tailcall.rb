class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.31.0/tailcall-x86_64-apple-darwin"
    sha256 "7b8f7eb3fbe02b5bc69a2a2cf2803aa8aa758acf3d67b26045a5eeb3e1bd1c6b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.31.0/tailcall-aarch64-apple-darwin"
    sha256 "7ab28094a9c62b1ea06e0a6b51dde3aa2692131702fadcdf3a135265e78204dc"
  end

  version "v0.31.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
