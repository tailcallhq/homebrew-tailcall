class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.80.3/tailcall-x86_64-apple-darwin"
    sha256 "009b91250f14a2a023a20c0f749c4f1275ca9dd14efccc5621e9a84d4a5f1f6d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.80.3/tailcall-aarch64-apple-darwin"
    sha256 "283aab3bcd4e671017e7827fd11750e59dd2e4514181d3ea511b230573182e48"
  end

  version "v0.80.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
