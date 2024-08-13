class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.102.1/tailcall-x86_64-apple-darwin"
    sha256 "7f39df50f87fb44be69fbc2ca8cc0d2880238ea4ce0222d06c792c118d64baea"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.102.1/tailcall-aarch64-apple-darwin"
    sha256 "a226d9373a5a07a0746219650fdb6df676ff13d31ed49f5a8e65a01c4efffb42"
  end

  version "v0.102.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
