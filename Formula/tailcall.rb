class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.120.1/tailcall-x86_64-apple-darwin"
    sha256 "bedf908774e97eda51c6be289f6a6248cd37c64017faee6fa8c895e9589b7e87"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.120.1/tailcall-aarch64-apple-darwin"
    sha256 "0b82448a5557797be6b4ed29de273ff07220d91a36f057c73adfd07f2e53937f"
  end

  version "v0.120.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
