class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.80.5/tailcall-x86_64-apple-darwin"
    sha256 "113d2739a57044ca57f3130457b882b87f56f0d599fac5b744113a0959b8219a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.80.5/tailcall-aarch64-apple-darwin"
    sha256 "9618b787b5435f31c9a82eefc6a3b13ec8a77a283977a514c322b82236728600"
  end

  version "v0.80.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
