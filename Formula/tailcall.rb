class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.71.0/tailcall-x86_64-apple-darwin"
    sha256 "cd66595b74b9c1890eb1b05867634fb38e29cb1539d0fee90ef5a538c7a11932"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.71.0/tailcall-aarch64-apple-darwin"
    sha256 "ecd5f06b8d4eb96b00ca1506b539c57eea15a4692f8022ac498d11976fb3d9ad"
  end

  version "v0.71.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
