class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.11/tailcall-x86_64-apple-darwin"
    sha256 "26bda6eb63ab594b119608ed2382716c3bfa6516260087a1fba16aa4eacb5468"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.11/tailcall-aarch64-apple-darwin"
    sha256 "a59ab02d86ca423288a03852188fa811bd3f52ed41a35f21d36c7f8d07a432a4"
  end

  version "v0.14.11"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
