class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.5.2/tailcall-x86_64-apple-darwin"
    sha256 "83524830171611175700fa2725b3b834e852166fc5ef0d133d0fd1326a6d5aa4"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.5.2/tailcall-aarch64-apple-darwin"
    sha256 "6b34f96ec9da4bed77c4368ad73000e19d1de001b5af77aa9fd3ff460fc83c62"
  end

  version "v1.5.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
