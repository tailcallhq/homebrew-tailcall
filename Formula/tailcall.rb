class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.120.12/tailcall-x86_64-apple-darwin"
    sha256 "1d787b73023b75bb3806e9a6ddf9a8c1b84fe268d89729106bb5880da9265c3a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.120.12/tailcall-aarch64-apple-darwin"
    sha256 "44e20e63e71f1f4482451de6cf593704b8d10f9864bcb5fa8debc6b128867b4e"
  end

  version "v0.120.12"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
