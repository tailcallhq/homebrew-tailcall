class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.12/tailcall-x86_64-apple-darwin"
    sha256 "46ae36abbb02cef0c55c31cae94cb999e73590f41d3fa4340b54b5240744042d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.12/tailcall-aarch64-apple-darwin"
    sha256 "e7506836dacebc3e3caae59899b8766fe251131bc4e20174355971a503ff237e"
  end

  version "v0.96.12"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
