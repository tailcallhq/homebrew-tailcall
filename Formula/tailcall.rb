class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.115.2/tailcall-x86_64-apple-darwin"
    sha256 "0d1dbadbf0f2a021d166895533b47332cf4c643ef3c8e7b32fefb62ceb83eea9"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.115.2/tailcall-aarch64-apple-darwin"
    sha256 "c65c58edc2f71a3b83859f3b0299bc1531cae25a38f811343fcee3d611d75eca"
  end

  version "v0.115.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
