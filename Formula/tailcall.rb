class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.101.0/tailcall-x86_64-apple-darwin"
    sha256 "3e2ce5f3f06891248b8bb1c1f4324fbe632b9d295742cfba382ca11ce519b7ef"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.101.0/tailcall-aarch64-apple-darwin"
    sha256 "e81610eef469d6f56889b722720c062ce2bd52ec06e716949348e824a4270fb2"
  end

  version "v0.101.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
