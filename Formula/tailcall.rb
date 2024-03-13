class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.51.1/tailcall-x86_64-apple-darwin"
    sha256 "291aee0be5095c0ea10367b9bf1e4dc8babdd52fb6a62540193d2d15849ecb3a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.51.1/tailcall-aarch64-apple-darwin"
    sha256 "da02f37bba681b52242b34baf0a5312cdd9dfa244f68990ff264cac50e422baa"
  end

  version "v0.51.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
