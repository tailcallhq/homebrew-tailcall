class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.10/tailcall-x86_64-apple-darwin"
    sha256 "289ec1f92e9ccfe0aa96412b79057fca796c8f4c103c125322d994943cf0f678"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.10/tailcall-aarch64-apple-darwin"
    sha256 "7f73435667ab1dc0590cd82f538155ed20d30bb23b7a5d20e6de175cdc704d28"
  end

  version "v0.99.10"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
