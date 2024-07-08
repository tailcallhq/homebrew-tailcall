class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.10/tailcall-x86_64-apple-darwin"
    sha256 "2c209a3602e3b4587eac4ebfb8e110ede83d088a12805138d43cdbb8bdf3161c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.10/tailcall-aarch64-apple-darwin"
    sha256 "e7232ee36fb45c0d1301c739619a4aec78ab22a41cdb9db8e5947fe9833b34ae"
  end

  version "v0.95.10"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
