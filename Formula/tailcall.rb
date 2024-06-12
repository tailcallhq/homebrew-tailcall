class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.88.5/tailcall-x86_64-apple-darwin"
    sha256 "37dcb5885a7f112019d88372802dccbd467914030cb1677380f0b41e99bf0bb8"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.88.5/tailcall-aarch64-apple-darwin"
    sha256 "89b3565dc0fb0684aa1ad96e85f438fae79a8b47d3a939d1e8f44ac39d79b8a1"
  end

  version "v0.88.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
