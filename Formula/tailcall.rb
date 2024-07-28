class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.98.11/tailcall-x86_64-apple-darwin"
    sha256 "88ce20a801475014ded904312e3e82de8339476be1e8e7313c56f4621dd56eff"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.98.11/tailcall-aarch64-apple-darwin"
    sha256 "cc1e2290744ea1a756a144b642f070667fe45f135abe296ffe4badbf98276e68"
  end

  version "v0.98.11"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
