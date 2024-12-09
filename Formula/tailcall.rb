class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.136.0/tailcall-x86_64-apple-darwin"
    sha256 "a9e86cd09a2d129643f50f84e67b905f9cc1ab26197dd397e45aef6d5c3bcec0"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.136.0/tailcall-aarch64-apple-darwin"
    sha256 "661177cf08d2cc04841a7b683a48f1ad1f7d5098be59062661ea594d28ce089a"
  end

  version "v0.136.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
