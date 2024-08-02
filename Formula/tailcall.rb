class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.18/tailcall-x86_64-apple-darwin"
    sha256 "fe4eaf15a0451eb28c1da6c70c6198149110916727b4fd78a843561cada4b926"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.18/tailcall-aarch64-apple-darwin"
    sha256 "98414d485c8e673de3fa6950d8aa859e84f57136b08c37758476f0f736fee176"
  end

  version "v0.99.18"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
