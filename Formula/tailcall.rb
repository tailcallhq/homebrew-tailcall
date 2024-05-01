class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.78.12/tailcall-x86_64-apple-darwin"
    sha256 "7a714cfced68f1c4b20783557a76dfa173fb39073286b840e90b86dbb9cd5bfc"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.78.12/tailcall-aarch64-apple-darwin"
    sha256 "64f85f8bfead22e7e7c9e6f04f2bea623100b57cdbc826e04c1edfab23cf4c61"
  end

  version "v0.78.12"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
