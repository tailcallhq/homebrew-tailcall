class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.12/tailcall-x86_64-apple-darwin"
    sha256 "dc0b1c2be9886e2bd4f2f34c63847112659dc927237a52e55f41a3a224c1d614"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.12/tailcall-aarch64-apple-darwin"
    sha256 "c19c0738b23eda4ad88247fb6a575f6e0fe31d444913c5c764d5d617c70e8fc4"
  end

  version "v1.4.12"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
