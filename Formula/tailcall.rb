class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.19/tailcall-x86_64-apple-darwin"
    sha256 "4664b8a35204be22214b711102a8b5939f05de4b16eb97d5ce20e1d5ecf17964"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.19/tailcall-aarch64-apple-darwin"
    sha256 "899114e5bc6e1a72681790e980f9dd396ee01c44b71cf512518b64c780ba5dc5"
  end

  version "v0.95.19"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
