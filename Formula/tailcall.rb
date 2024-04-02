class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.72.2/tailcall-x86_64-apple-darwin"
    sha256 "9d72c5611d50aba45b0638b7ee1dc66dea9148b83f366228321d16e65925e2b9"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.72.2/tailcall-aarch64-apple-darwin"
    sha256 "e29d7827886e05752774885c96590ba7705c1aa4b0a06a051bd67b166a954fdf"
  end

  version "v0.72.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
