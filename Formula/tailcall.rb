class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.4/tailcall-x86_64-apple-darwin"
    sha256 "5e8e2dcb177d8ef378dd52ce5987c2a57ab73f80a631d0fc1e2e27f7cf03b758"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.4/tailcall-aarch64-apple-darwin"
    sha256 "f2193d0a09e9dbe2cbeb500ace79704b289738d0388a7ea85b1d719bfebcdf34"
  end

  version "v0.121.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
