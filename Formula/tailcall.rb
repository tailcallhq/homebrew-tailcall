class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.6.5/tailcall-x86_64-apple-darwin"
    sha256 "de277fdef214277539475312ffe33f6a17912769e765ff3b2ebf49b647d727ca"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.6.5/tailcall-aarch64-apple-darwin"
    sha256 "7397bbc2336f39bacebad93d91668f9c21bc03ae8be801c51dee3d4176c97517"
  end

  version "v1.6.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
