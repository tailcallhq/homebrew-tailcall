class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.20.3/tailcall-x86_64-apple-darwin"
    sha256 "42e0eb84ceb3ca51f674c9a0421f180a537419858a1977f7460a678d2950800b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.20.3/tailcall-aarch64-apple-darwin"
    sha256 "b8baa2556dbdf2378e82e273b8a8468c0b624c9d6758dc79b25bc9c08f802500"
  end

  version "v0.20.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
