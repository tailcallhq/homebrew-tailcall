class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.76.4/tailcall-x86_64-apple-darwin"
    sha256 "0d3aa836be0922692f261559dfb7121df92a82ce29e961d0b30fe28d37a65b2d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.76.4/tailcall-aarch64-apple-darwin"
    sha256 "92ab38b715259d93c068b082502fcf97189a48891b8034cac9ee8f351f5a6de2"
  end

  version "v0.76.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
