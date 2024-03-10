class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.47.3/tailcall-x86_64-apple-darwin"
    sha256 "a7a09f7ca3cd3fc37f47ffd28185114b244ba22148df68e19f96f31e89a0fe09"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.47.3/tailcall-aarch64-apple-darwin"
    sha256 "3fe1c49e7c1bb27e8f9b27ea83d3a1d723b4a6e1d9697cc0e4fb3571aa621996"
  end

  version "v0.47.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
