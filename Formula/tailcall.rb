class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.113.1/tailcall-x86_64-apple-darwin"
    sha256 "3fda12351e643e175a2c4d8a8de8ac1d614e0fa8f755f7cee67754fc298fbe3e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.113.1/tailcall-aarch64-apple-darwin"
    sha256 "244ed00bd31ca915e9da21a64c3b78417dffe36328bb9678d9ec6ab19cf89507"
  end

  version "v0.113.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
