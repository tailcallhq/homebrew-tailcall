class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.123.2/tailcall-x86_64-apple-darwin"
    sha256 "a27e554be82ff4c01e900354a24151eb4191dc6aba6ebc7b5b766e81c72dab63"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.123.2/tailcall-aarch64-apple-darwin"
    sha256 "73051ef6e8c960d13c742a62abe8bddd41b5b8d349f413dcd0ad09195e0885ca"
  end

  version "v0.123.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
