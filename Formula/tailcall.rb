class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.37.8/tailcall-x86_64-apple-darwin"
    sha256 "8f74ec0c89e96c9a25d2ba2f8f098147f185eab486f87547f90d89f57427f9ed"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.37.8/tailcall-aarch64-apple-darwin"
    sha256 "efc91bfe69969fbd20c738810e09f63f2badc420b882f0618a37473a8bf15ddf"
  end

  version "v0.37.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
