class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.10/tailcall-x86_64-apple-darwin"
    sha256 "1df4984f5423f283b1d7294746ff42e406526630b7cadd2b520c2587543e15cb"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.10/tailcall-aarch64-apple-darwin"
    sha256 "0b181ce816921b6117bcf0844a6a946f555df4e050ffabaf838a2eeb6ee560ee"
  end

  version "v0.104.10"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
