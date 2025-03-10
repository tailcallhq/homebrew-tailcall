class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.13/tailcall-x86_64-apple-darwin"
    sha256 "713a7494eadfce2ad925b3ed082002f9cd9ddd90b5ebd901f87faa080b02bcde"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.13/tailcall-aarch64-apple-darwin"
    sha256 "2d2c57193572e925a6be9fa983cf0bd11f56e79d06572b890cfd1495ff15f7d2"
  end

  version "v1.5.13"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
