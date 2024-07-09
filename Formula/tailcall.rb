class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.14/tailcall-x86_64-apple-darwin"
    sha256 "7f00c99e228077139f695e7ff5e3060fe6024929ddca1dc2151455157d65738a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.14/tailcall-aarch64-apple-darwin"
    sha256 "ceed53ae56989864bfe48e687558d359a70294b37f65988346847417bf836b9c"
  end

  version "v0.95.14"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
