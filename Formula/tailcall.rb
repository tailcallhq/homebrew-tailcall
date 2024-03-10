class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.47.7/tailcall-x86_64-apple-darwin"
    sha256 "bb10c6e34288bd9a4dd7f8cf0b192b73d60b990fd1642863477d2850824cf71e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.47.7/tailcall-aarch64-apple-darwin"
    sha256 "07ae5f20d0e229d0e6d336bffc121355d8175e54b03c1b1b51bdc6a084f27cdd"
  end

  version "v0.47.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
