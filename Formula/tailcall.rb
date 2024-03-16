class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.59.0/tailcall-x86_64-apple-darwin"
    sha256 "79836be8a374bea672c5ea6f28f4e6b4711031bec3bf82921321ed1d7c1cd665"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.59.0/tailcall-aarch64-apple-darwin"
    sha256 "ac618bbe48ca651dc887c8c04bc893b80cfef3b2e6d8645aa13b0e02dd6372ca"
  end

  version "v0.59.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
