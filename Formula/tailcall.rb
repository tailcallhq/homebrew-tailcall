class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.93.4/tailcall-x86_64-apple-darwin"
    sha256 "930ef06d53fd63a365eb29c11d6fa3a9a60d5d016f1ef40b15624a89fbd28982"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.93.4/tailcall-aarch64-apple-darwin"
    sha256 "3bfdbb02618852555d4a30105beeabd5494a85877e7e0ddc347f0255753c38d5"
  end

  version "v0.93.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
