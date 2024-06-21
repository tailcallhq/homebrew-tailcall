class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.91.5/tailcall-x86_64-apple-darwin"
    sha256 "d7f29807446a2b4676608ab6fcb6454d1fb80bc224f8b5663c18ce1945524117"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.91.5/tailcall-aarch64-apple-darwin"
    sha256 "3265ea9f6b3dd9e4f7c25302141976b7b0b1da21560dca018057dbbea803a051"
  end

  version "v0.91.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
