class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.25/tailcall-x86_64-apple-darwin"
    sha256 "400b23045014758a4edb129c09b7f4093f939f46f1125c58bb248113aa2cacb0"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.25/tailcall-aarch64-apple-darwin"
    sha256 "b784504a50726871235771c919097e0061d229941756c68ae63120d1970fa073"
  end

  version "v0.99.25"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
