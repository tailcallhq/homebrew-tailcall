class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.13/tailcall-x86_64-apple-darwin"
    sha256 "5c29b48564b8b8e7b4b5c1f3d5a8cb6135222990bca3a554381b38ab690935e6"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.13/tailcall-aarch64-apple-darwin"
    sha256 "d032c90ec6cbbf7548918f85a198117a149d29e2105cdde88a438a9abbd7d140"
  end

  version "v0.74.13"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
