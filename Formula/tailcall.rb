class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.10/tailcall-x86_64-apple-darwin"
    sha256 "f9680a007cc0e8457f2378edf8448f7c2221dad312331a34466d9738dc8cdac9"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.10/tailcall-aarch64-apple-darwin"
    sha256 "dc16cf711bd13d026f6269a16c840e03e081a77bb2e90732f5986cb3731ce54b"
  end

  version "v0.121.10"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
