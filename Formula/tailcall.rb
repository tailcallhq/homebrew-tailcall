class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.123.3/tailcall-x86_64-apple-darwin"
    sha256 "f5fda1aba09001f4673cc40fa107eb20e83ddd4094ee7e3a9c61e1226bf7ceef"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.123.3/tailcall-aarch64-apple-darwin"
    sha256 "5e81102458e824bcbc1aa23316cb7d19d62b3358ce394e1f91bf78ee5e42e845"
  end

  version "v0.123.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
