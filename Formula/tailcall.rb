class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.108.0/tailcall-x86_64-apple-darwin"
    sha256 "812b3c01dd790a885458e7d75c74e0befb5ca95fb738aad03d67b6b6769d3e76"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.108.0/tailcall-aarch64-apple-darwin"
    sha256 "14dadadb4b953393a336ec67795346e73341efd42e0b942979a1e467b2591846"
  end

  version "v0.108.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
