class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.98.7/tailcall-x86_64-apple-darwin"
    sha256 "a5ee285ef2e18805c6c81b46958344b9385813770bfc3a1cfad096cb959a95a8"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.98.7/tailcall-aarch64-apple-darwin"
    sha256 "36abab1e254a78ec1e6ee0fb9d7e97a03a4a7fec9afda172b1f89f91795d30a8"
  end

  version "v0.98.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
