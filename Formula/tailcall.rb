class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.17/tailcall-x86_64-apple-darwin"
    sha256 "4122b6b3116973c0342d142111d0da895bde49e749e5a1b0a6519f19e396f851"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.17/tailcall-aarch64-apple-darwin"
    sha256 "24fa47f6afb83aed9c56ae3cf9d8467b157a1a44562af0770e91a2bfadd68adc"
  end

  version "v1.5.17"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
