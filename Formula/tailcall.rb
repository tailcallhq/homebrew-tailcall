class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.100.4/tailcall-x86_64-apple-darwin"
    sha256 "8d209544adaf2ea2e0a1295574bd46835f7e0c2b05b90767af3838bf7963453e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.100.4/tailcall-aarch64-apple-darwin"
    sha256 "05a0620d377c12a0389606f7a92ad9e8205d67d6c949152dc275df4ad82d4177"
  end

  version "v0.100.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
