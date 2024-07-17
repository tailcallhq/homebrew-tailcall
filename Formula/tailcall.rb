class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.13/tailcall-x86_64-apple-darwin"
    sha256 "d827f6fb64f47b1fdd1b55bb980c7e3029cac1a15f3c05406b80c87a32545905"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.13/tailcall-aarch64-apple-darwin"
    sha256 "88fcd632e11a1e8be1f96c0d47376284145729f577ceb6777342ff365bb29c56"
  end

  version "v0.96.13"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
