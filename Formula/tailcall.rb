class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.39.3/tailcall-x86_64-apple-darwin"
    sha256 "ccf4c86c3fe84918f9b77423b784f7518d55a6d2bf4e151dde0e45b0af94462b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.39.3/tailcall-aarch64-apple-darwin"
    sha256 "d3f0735fb64b83fc0128f1a595aa29ba66dc5c4a0c871bef3cab2b94f55302c4"
  end

  version "v0.39.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
