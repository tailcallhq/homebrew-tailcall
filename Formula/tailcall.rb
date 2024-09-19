class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.112.2/tailcall-x86_64-apple-darwin"
    sha256 "8f608ac5447ab7f58d89f66aec97fa4d49e181b1157d18dac50350a3fffdf0bc"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.112.2/tailcall-aarch64-apple-darwin"
    sha256 "a804b064173e3e6c1eed351234035513c4bc14447cc1a31b4e9c646721a61038"
  end

  version "v0.112.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
