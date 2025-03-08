class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.1/tailcall-x86_64-apple-darwin"
    sha256 "0761bb7aa9eb73321c38fdae83016d22ff566242b972653610d84674fcf02db1"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.1/tailcall-aarch64-apple-darwin"
    sha256 "845a9373215327c3b3002fe6c3b96f6c0f41f55e12261ff2b0c4acb6e45dfd38"
  end

  version "v1.5.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
