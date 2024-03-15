class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.56.3/tailcall-x86_64-apple-darwin"
    sha256 "fe853a59885a0aa8b290f195559bbaab4a8cc8670ed6e0bca9e549e933f300b9"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.56.3/tailcall-aarch64-apple-darwin"
    sha256 "5971ec319937b1c95fcc2abd5fe2d78e66b69127c08e53acdb7f430c7d1660bc"
  end

  version "v0.56.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
