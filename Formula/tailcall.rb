class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.6.6/tailcall-x86_64-apple-darwin"
    sha256 "a99c472ddb20295c39d16fda9dda6e988d41b66fe43c14f33af717a5af966841"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.6.6/tailcall-aarch64-apple-darwin"
    sha256 "3aab18efede7ea1e3a2b00d63938a219c49ad6926763e7ca7582d26a5be8aac2"
  end

  version "v1.6.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
