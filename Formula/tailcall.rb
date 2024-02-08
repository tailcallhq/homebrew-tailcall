class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.36.0/tailcall-x86_64-apple-darwin"
    sha256 "57206261fa3cc7a27240de19f29b5fd0ffded1534712f777933e11c535c195f7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.36.0/tailcall-aarch64-apple-darwin"
    sha256 "3c058107fed5fa527865c8e29dae7cbd3fed2610a9e57d8bcec2cba0fbf8f11d"
  end

  version "v0.36.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
