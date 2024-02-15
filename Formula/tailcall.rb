class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.39.1/tailcall-x86_64-apple-darwin"
    sha256 "3266d557aa75d7c91611c78d11304accca5bf618209bb33eb4e24b6dcc470688"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.39.1/tailcall-aarch64-apple-darwin"
    sha256 "e6774abbd5e9032a69a049ea87b30df545e9c0833f41a9643b57c784e93b8757"
  end

  version "v0.39.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
