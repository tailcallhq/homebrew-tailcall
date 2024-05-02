class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.80.0/tailcall-x86_64-apple-darwin"
    sha256 "31254a838f9224229aec775bb5b4710b59397eba6085fb33024bdce24d181478"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.80.0/tailcall-aarch64-apple-darwin"
    sha256 "2ad6b32edd14c6c4f6b9589da39bbb2068f9ec752c40bad97afd040e02daf774"
  end

  version "v0.80.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
