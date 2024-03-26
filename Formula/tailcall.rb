class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.68.3/tailcall-x86_64-apple-darwin"
    sha256 "5ad405612b0adb89f77043a4b0cc9a43f127f578ed7defa2cfc1bc76d777103c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.68.3/tailcall-aarch64-apple-darwin"
    sha256 "ac3ab49b328077e256c702835712983dcf35a4ce3edad97ea051cbaf4587b8d9"
  end

  version "v0.68.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
