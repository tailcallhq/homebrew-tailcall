class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.118.2/tailcall-x86_64-apple-darwin"
    sha256 "e6e5bb134241afaaf0b486a986fc63be7eae501f5d5769703215bcc8c72631e7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.118.2/tailcall-aarch64-apple-darwin"
    sha256 "0c9c97253aa25eb7c86edde44c4ce310389171810883998e7bc388bcae99d58f"
  end

  version "v0.118.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
