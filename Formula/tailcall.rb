class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.8/tailcall-x86_64-apple-darwin"
    sha256 "e781a6e20f3ea7fa76a133559447472eb4df2c8add54417acaff6ae55e20e2d1"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.8/tailcall-aarch64-apple-darwin"
    sha256 "f58944c2c4388347308fbea53b327fc5545ac3f4e9c5db4fb6cc71e89f7e964a"
  end

  version "v0.74.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
