class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.5/tailcall-x86_64-apple-darwin"
    sha256 "39ec29cf01e3d7b1c1e7afc8274b06dcbf729f1b8dfca2ff264f0c113f43ca8d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.5/tailcall-aarch64-apple-darwin"
    sha256 "8295465835ea83b36fb516e97c053c1270da7013e4e975d0d6cc8536fce27d30"
  end

  version "v0.82.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
