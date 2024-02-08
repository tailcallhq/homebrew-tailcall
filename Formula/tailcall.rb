class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.35.1/tailcall-x86_64-apple-darwin"
    sha256 "90953215191e8313fd8503e086235f2a63a4765cfcc26e159961b335b5941ba9"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.35.1/tailcall-aarch64-apple-darwin"
    sha256 "6385669580f9ce1765eae7dc1386c149bbd0177d0117d7d9459c31b8e77633fb"
  end

  version "v0.35.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
