class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.7/tailcall-x86_64-apple-darwin"
    sha256 "2f99e5626627e6b73ca5d6ae70453a0820ad15841d68d88228895d7e47a63920"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.7/tailcall-aarch64-apple-darwin"
    sha256 "3b990a557a79f07b935b5dbc3f1501e55a0ed930c4490b54beda6c37b8419ad4"
  end

  version "v0.95.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
