class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.8.2/tailcall-x86_64-apple-darwin"
    sha256 "9ae2abf7cce2a2990da5fd23b0ed422f41a2daf98c2eece7f85303c5030a8837"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.8.2/tailcall-aarch64-apple-darwin"
    sha256 "3e6684cd59c84f6f66bbf44dcd0e83285df334083937fec8ce0b183341688c47"
  end

  version "v0.8.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
