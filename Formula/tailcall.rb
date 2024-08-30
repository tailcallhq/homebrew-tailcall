class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.0/tailcall-x86_64-apple-darwin"
    sha256 "3fd28ad50a3f4731162806d9bb58e63aa72f52d6898900e118048082c73b8710"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.0/tailcall-aarch64-apple-darwin"
    sha256 "c8b5c0fee8cf1d52fa83fd46bd836755596088c174a114648c0121dfa2820256"
  end

  version "v0.111.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
