class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.15.2/tailcall-x86_64-apple-darwin"
    sha256 "43b99cae41518af905f3795e9d87607c87954e611dcb426125f562e003090616"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.15.2/tailcall-aarch64-apple-darwin"
    sha256 "8f770dce08db595ce94c9ffd997c01a96913b03a08417c7a9db62b01c64ebe3f"
  end

  version "v0.15.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
