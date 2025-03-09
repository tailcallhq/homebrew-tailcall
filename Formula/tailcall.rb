class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.7/tailcall-x86_64-apple-darwin"
    sha256 "d53cbb50cca5781b2a3a48a8df1d49ea716c4a3b4f754cbc7ca9f01ed02377b7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.7/tailcall-aarch64-apple-darwin"
    sha256 "f5428c7c03daaa2ed5f2b178c52d7dd05d60bdfaeb687ad94b3d76366d2061f4"
  end

  version "v1.5.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
