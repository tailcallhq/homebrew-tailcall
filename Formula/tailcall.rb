class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.125.0/tailcall-x86_64-apple-darwin"
    sha256 "cd6f13d1168f42e84a9cd8332948f46ade9e173fa180195c960e935ba6d78f48"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.125.0/tailcall-aarch64-apple-darwin"
    sha256 "393faf526a24c1f2dd56cf0e994b1ece4bf0eaf90f12cb4f6f66aeeeb0cf4733"
  end

  version "v0.125.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
