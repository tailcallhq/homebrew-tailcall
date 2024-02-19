class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.39.4/tailcall-x86_64-apple-darwin"
    sha256 "9a8227d4841a1916ad6e59cca709cb4e3937193b70b36b7d2c6197331913e4c1"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.39.4/tailcall-aarch64-apple-darwin"
    sha256 "4358a9050f02746331a0b931817b6c8cc51472886cf3ef79f4f13ee948b8e645"
  end

  version "v0.39.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
