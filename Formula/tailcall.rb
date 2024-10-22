class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.122.4/tailcall-x86_64-apple-darwin"
    sha256 "d545b3ce805c91b0011e5d969900e87b2ff821e8a90c918ba4b567966964e6b8"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.122.4/tailcall-aarch64-apple-darwin"
    sha256 "5668a446ae425583cc9096ef0de305fd9891d1ed7f92001e6a180c8e31794bd5"
  end

  version "v0.122.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
