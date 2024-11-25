class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.129.0/tailcall-x86_64-apple-darwin"
    sha256 "2ed3473a2646ba7a231f294160c2514d7d2b5817778eb4fe1c914b7d37107f5b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.129.0/tailcall-aarch64-apple-darwin"
    sha256 "9b22f33914d998b3ca786f2867f8f26d7bfa077158d80ff0f6bde4fbfe4af967"
  end

  version "v0.129.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
