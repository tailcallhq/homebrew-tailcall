class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.97.2/tailcall-x86_64-apple-darwin"
    sha256 "3bf3cb87fd46b1e7035475c365cc52318f2b2aa9f39391473ab3b56cbe1e3071"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.97.2/tailcall-aarch64-apple-darwin"
    sha256 "a9cbd5f5d69cc7d0d51ffa49f867a1f3db4774ebfedb609ffa01d5f5835aa93f"
  end

  version "v0.97.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
