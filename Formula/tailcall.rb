class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.9/tailcall-x86_64-apple-darwin"
    sha256 "505c7e44cce39e8ad4e01ac40e4e7b86b818906516b75321e858b29eef9c1959"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.9/tailcall-aarch64-apple-darwin"
    sha256 "cf20052c497102289fdf4d7a271ddf196fccc9b615fbea1b99677af6c333fcfc"
  end

  version "v0.99.9"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
