class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.17/tailcall-x86_64-apple-darwin"
    sha256 "947ba3eef71e7758037e71eae0b93bb7c61579ac4831dd9aa3d1a69ae5f3b37b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.17/tailcall-aarch64-apple-darwin"
    sha256 "8887c632ff508635bee530c32e30652802b0e10299a440d122be0745da30bdba"
  end

  version "v1.4.17"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
