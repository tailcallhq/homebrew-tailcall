class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.10/tailcall-x86_64-apple-darwin"
    sha256 "7ee3d87a3ae0b1a102300f15bc9e256081b26fdb2cdb00bcede90eb037a05817"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.10/tailcall-aarch64-apple-darwin"
    sha256 "8a3fcad13def61c5d22ac6c87b2f8c9b814e8bfa3f6784ac29cce1b25fd0fb86"
  end

  version "v0.96.10"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
