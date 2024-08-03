class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.19/tailcall-x86_64-apple-darwin"
    sha256 "63a9f36c126248f666e9c3551a2bf197a251eb9133afef6e18f22c5f0e186c0a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.19/tailcall-aarch64-apple-darwin"
    sha256 "73fe5981cb59a07f31605514f5c1eae839ee6eb5b1c6fc37e04b30a8da2f5e75"
  end

  version "v0.99.19"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
