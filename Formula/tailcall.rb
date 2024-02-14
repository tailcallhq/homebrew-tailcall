class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.39.0/tailcall-x86_64-apple-darwin"
    sha256 "1fbba7733be06cbbfd71bf60e6ce8323bed54d48d9c7111689ded2ae56a97efa"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.39.0/tailcall-aarch64-apple-darwin"
    sha256 "fe590387bc47d8aa2f0f5e85c434bad754b2c3b280fd21333aa6a66c5dd432b9"
  end

  version "v0.39.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
