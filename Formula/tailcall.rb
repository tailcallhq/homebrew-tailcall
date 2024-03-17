class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.61.1/tailcall-x86_64-apple-darwin"
    sha256 "50207bb3b813d5ae73e830e52e93c6a7efbecb9914024822cc5a9cf982bd6fa4"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.61.1/tailcall-aarch64-apple-darwin"
    sha256 "edc52f13ec6ea5ebf7937b71669b3c73f3b1cdc597ac8eabffbfdfdeb7bfc9d8"
  end

  version "v0.61.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
