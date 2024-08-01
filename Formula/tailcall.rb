class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.16/tailcall-x86_64-apple-darwin"
    sha256 "61ee31ce889e77bc2b1d3bce8f1b93145658ee7ef8ab2a35715bf685292920c4"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.16/tailcall-aarch64-apple-darwin"
    sha256 "816c5f3c2498565acab1619589c31e0fe4f4f54527dbed531f6971c1f1abc5fa"
  end

  version "v0.99.16"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
