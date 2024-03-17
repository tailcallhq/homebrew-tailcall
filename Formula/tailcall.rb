class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.62.2/tailcall-x86_64-apple-darwin"
    sha256 "58552b15fc937cc6fbe94a476c092cb49ff940b0f5e0fa1a91c1e21a1f2c4e80"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.62.2/tailcall-aarch64-apple-darwin"
    sha256 "cc4bf33a3d6f8d71a4c4ef02616ba3185c34f003dabc147c92bbb6e1ea468b43"
  end

  version "v0.62.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
