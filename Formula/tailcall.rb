class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.54.1/tailcall-x86_64-apple-darwin"
    sha256 "e3e995e0b648ad2f41dee79119f035e512cfcc37cb915becf290cee23cbb0f43"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.54.1/tailcall-aarch64-apple-darwin"
    sha256 "94fadee86493dd58008e8338b80d9489b97562821b9c75a8a5a21781e45272ea"
  end

  version "v0.54.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
