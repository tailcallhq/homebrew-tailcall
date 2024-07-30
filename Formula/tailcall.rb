class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.3/tailcall-x86_64-apple-darwin"
    sha256 "92bd5cfd753d813c2087bc1539c6ddf360246e2a353b62ea42fcd97c6625d303"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.3/tailcall-aarch64-apple-darwin"
    sha256 "b76ac82f5ded414df6c9c3b400ce13947f6fdc530758646661ab68f021d8817b"
  end

  version "v0.99.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
