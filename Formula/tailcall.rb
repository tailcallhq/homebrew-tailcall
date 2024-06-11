class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.88.4/tailcall-x86_64-apple-darwin"
    sha256 "7a4f7bd732bf0f78637a8797a4a839ec8187a56845d216c47cbbf79d8614e811"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.88.4/tailcall-aarch64-apple-darwin"
    sha256 "cc6b4086ef54aee9c2fa5cbfcc6b9cd2a1107e44577ff8421d1b4cb11c534ac8"
  end

  version "v0.88.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
