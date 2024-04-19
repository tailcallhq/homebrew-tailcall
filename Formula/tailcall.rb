class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.76.5/tailcall-x86_64-apple-darwin"
    sha256 "84c989ca5e680a7ef4e952eed80c1a015e662c0b1e5b1863009f7b67ec02432e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.76.5/tailcall-aarch64-apple-darwin"
    sha256 "cdf87c0e1f956275cd36f4bb6fcca701625e520911eadfd02cbc53ba29a44a64"
  end

  version "v0.76.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
