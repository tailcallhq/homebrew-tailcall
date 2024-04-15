class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.75.1/tailcall-x86_64-apple-darwin"
    sha256 "ad55aa76e24dfbf53840dfbd265a7315132c6ce9229b11a03f00528336500d88"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.75.1/tailcall-aarch64-apple-darwin"
    sha256 "1f766cd7c97bebc37c2191626e1e33a8049e8e5260790b875b23e0fef517ad57"
  end

  version "v0.75.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
