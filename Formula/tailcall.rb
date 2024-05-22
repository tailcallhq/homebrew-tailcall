class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.23/tailcall-x86_64-apple-darwin"
    sha256 "12e5a9f7d51ad5f0cb3f835be51cef03d3ebdca3bfc82bf4bf47e52df8340093"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.23/tailcall-aarch64-apple-darwin"
    sha256 "4034ccbe6d5f8838ad92dd446ef3fb6619ce3550e9e9e50cd43c368c14b45126"
  end

  version "v0.82.23"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
