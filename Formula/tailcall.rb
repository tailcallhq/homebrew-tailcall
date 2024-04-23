class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.78.0/tailcall-x86_64-apple-darwin"
    sha256 "3edca8ee6d18bbff0bd5fc725130f893c72fa100b17530977f3a0e8862b67643"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.78.0/tailcall-aarch64-apple-darwin"
    sha256 "c77b73d63cd2c7ba2fed49b209c12fb385c981ef6d5ea201701ffa6e906aaecd"
  end

  version "v0.78.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
