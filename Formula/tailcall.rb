class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.106.0/tailcall-x86_64-apple-darwin"
    sha256 "9626661210041bc46e2f38c53072a0f9733253c3d39748daef1a5f882d5ae7ce"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.106.0/tailcall-aarch64-apple-darwin"
    sha256 "3033b911832adfb02a695f04a07481310a0d6f3b55ada891898704b6420c347d"
  end

  version "v0.106.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
