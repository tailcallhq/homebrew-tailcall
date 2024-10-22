class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.122.0/tailcall-x86_64-apple-darwin"
    sha256 "542d7542ab1c3394a5a860ec538ca959ae364b6eb8c1d1eece658a7cc8285a90"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.122.0/tailcall-aarch64-apple-darwin"
    sha256 "ea49a3fa45a69264808fa1a4d413f1a35b4952543e29c17f0761962f72c2068f"
  end

  version "v0.122.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
