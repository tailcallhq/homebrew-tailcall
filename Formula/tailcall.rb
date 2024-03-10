class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.47.0/tailcall-x86_64-apple-darwin"
    sha256 "2d414333c9ed3f9fddc669af1e04f4fcfd7f35d895b4cc02dcd8ce048a6f24c7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.47.0/tailcall-aarch64-apple-darwin"
    sha256 "31dcbb73d55f1de9d87313b43259076def8ae710e7bde16eed4c6efae68b420d"
  end

  version "v0.47.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
