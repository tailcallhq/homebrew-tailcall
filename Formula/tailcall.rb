class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.16/tailcall-x86_64-apple-darwin"
    sha256 "70816b6f04be5260f057d8d25c403947729de7ab11eb6ae35ef22636c0ba4ec5"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.16/tailcall-aarch64-apple-darwin"
    sha256 "2a55a5b8a5fc407dadae8db8c05b9f23d647e609beb98c9b9f6364c160e54de2"
  end

  version "v1.4.16"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
