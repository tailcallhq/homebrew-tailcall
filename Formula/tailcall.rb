class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.88.0/tailcall-x86_64-apple-darwin"
    sha256 "d299daaa576efc953d831f8c3ef965f6d33402d94878909786ffc6eac9576e91"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.88.0/tailcall-aarch64-apple-darwin"
    sha256 "9f4613bfe6d0ea4d0a004742f473f088b7f3b075ce7d577bfebb56e8c0347e1e"
  end

  version "v0.88.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
