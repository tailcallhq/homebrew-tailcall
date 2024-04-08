class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.7/tailcall-x86_64-apple-darwin"
    sha256 "d7fdaf1ec314bc0fd3b582b144430045a2978c3190fd759055e18f7460edfd20"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.7/tailcall-aarch64-apple-darwin"
    sha256 "21bd8a95ad478cd0c374cd4cb78a851518cd555dfccfa64ed525bc094b4d7640"
  end

  version "v0.74.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
