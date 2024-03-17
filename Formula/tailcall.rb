class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.59.3/tailcall-x86_64-apple-darwin"
    sha256 "70f50d08666977e20c48e121a7c3386f982d0d4a3503b6b93682ac6195484c9e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.59.3/tailcall-aarch64-apple-darwin"
    sha256 "43d2b46adcb318b005eefd4f0865a0c2bce20a5f552531db064f9a7f0a0b05e5"
  end

  version "v0.59.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
