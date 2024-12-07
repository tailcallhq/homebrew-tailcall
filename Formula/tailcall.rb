class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.135.6/tailcall-x86_64-apple-darwin"
    sha256 "bd49a37f87414eaa1e8245bb46e02c518cdd27a3b5e01763f84c9a90be5be708"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.135.6/tailcall-aarch64-apple-darwin"
    sha256 "20ed1ae64f7e77f4d22ac124e8bb877982723cd5fb99299553c125c64f88d170"
  end

  version "v0.135.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
