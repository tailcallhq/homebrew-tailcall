class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.1/tailcall-x86_64-apple-darwin"
    sha256 "6bc4f1c58e2ea57f6aaf0bf0f225cd7429a0340546dfa87a0c59da8ae002777a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.1/tailcall-aarch64-apple-darwin"
    sha256 "2f071c7ba78c627c081598e3ac8152bd21cb35f0a90d64fc80b8932f7594c389"
  end

  version "v0.96.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
