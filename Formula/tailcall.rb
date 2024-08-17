class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.7/tailcall-x86_64-apple-darwin"
    sha256 "e5be6da512d41323fe8c46cd394adcbd0dcc19dadc7bb2e64111d121b6a46348"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.7/tailcall-aarch64-apple-darwin"
    sha256 "e0b101c51fe58d93c3ade71805ed969affc3874acc4a5303bc8682ef00558adb"
  end

  version "v0.104.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
