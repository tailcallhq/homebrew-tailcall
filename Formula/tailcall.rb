class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.93.0/tailcall-x86_64-apple-darwin"
    sha256 "ad4fd5fce4066609679963c3da1c639cf5dcfb522112ca7205adaf6e11b5e81e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.93.0/tailcall-aarch64-apple-darwin"
    sha256 "6fe53e115a768ce0f0089d59dd4fcc77bfd5180ead1c77341eaaee6dd593edcb"
  end

  version "v0.93.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
