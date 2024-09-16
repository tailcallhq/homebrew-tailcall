class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.12/tailcall-x86_64-apple-darwin"
    sha256 "e3838834e5e70bad61151e0b7285aa30684588be9a3f70cc9de77275278722b5"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.12/tailcall-aarch64-apple-darwin"
    sha256 "e57a6e2ec28edc07807f57ef1e00000bbae25afaa80ba176a12c3efec449f8b5"
  end

  version "v0.111.12"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
