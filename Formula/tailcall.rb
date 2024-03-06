class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.44.0/tailcall-x86_64-apple-darwin"
    sha256 "71576beaceab10591576cccac7f86d01bced4be7c524f081e53c2e0a5e63557a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.44.0/tailcall-aarch64-apple-darwin"
    sha256 "12fd0253f27091dec3d3e241b0271e8dc638700e6c756461a59d0ee810c3bba7"
  end

  version "v0.44.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
