class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.120.5/tailcall-x86_64-apple-darwin"
    sha256 "34fa00b31dcbad65a252b1ed59d58034b42d4b3d66cc960594159493717b58f1"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.120.5/tailcall-aarch64-apple-darwin"
    sha256 "66b96dafe370b9d17c17405eec329b8c49000261e5536c9a9294f24d67b5d2ff"
  end

  version "v0.120.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
