class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.64.0/tailcall-x86_64-apple-darwin"
    sha256 "685ff766e5305debe525345d3c0f783ed403ffd117c51e138a878dd2f479ca4c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.64.0/tailcall-aarch64-apple-darwin"
    sha256 "03ad1bcd517b15beb72ab6a4a9adc75692c4a9b713a30e1c01dbf1e3cd3b4070"
  end

  version "v0.64.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
