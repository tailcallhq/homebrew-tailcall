class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.91.6/tailcall-x86_64-apple-darwin"
    sha256 "26d6971d0a1c40238ae2f07731e5cdb755d322dd443b14f6ba2999b2f29affda"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.91.6/tailcall-aarch64-apple-darwin"
    sha256 "743b72aa7eebfb935b665ce530c5d2c7653f62c1d92837b23a551f9b1bc57b38"
  end

  version "v0.91.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
