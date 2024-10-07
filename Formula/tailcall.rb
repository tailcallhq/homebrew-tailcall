class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.120.4/tailcall-x86_64-apple-darwin"
    sha256 "7083d7359cc903c4e81895abf82ffa230de6ea7d6fe619c485f7ab01810fa56f"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.120.4/tailcall-aarch64-apple-darwin"
    sha256 "df2ff03f3cd195a713d68129dd688999944f9d5fd7e1f44d565b5158082a7812"
  end

  version "v0.120.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
