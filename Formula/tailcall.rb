class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.15/tailcall-x86_64-apple-darwin"
    sha256 "34cc79e99d1adfa7c16495ad1c388575fdb61f68da12d341fd45fcb3212933fb"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.15/tailcall-aarch64-apple-darwin"
    sha256 "1cfe398cc1bd38af42366569ce9b06a5266e6c23fd721bcc0b714c78fdb61b71"
  end

  version "v1.5.15"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
