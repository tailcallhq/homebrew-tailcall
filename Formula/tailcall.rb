class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.25.1/tailcall-x86_64-apple-darwin"
    sha256 "bdb2a0b770f9b7301f8e57fe9b4604d5e89d02a5fb46ea5420824af91981b0ca"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.25.1/tailcall-aarch64-apple-darwin"
    sha256 "5604eebd01e40b84f108c9c1227b934f0278ba1e5956485d316c09cf3769d300"
  end

  version "v0.25.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
