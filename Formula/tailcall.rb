class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.0.0/tailcall-x86_64-apple-darwin"
    sha256 "af136714ad58f00fdf75c132eaad53beb880f6c708af2aee3a2eaffa5d4478b3"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.0.0/tailcall-aarch64-apple-darwin"
    sha256 "2e38b0c4c303e6173478fc3a5e7e0279dc2da751f5f472840128d70898a766b6"
  end

  version "v1.0.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
