class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.6.11/tailcall-x86_64-apple-darwin"
    sha256 "e83fbbd1a5e446af51e7d59ca60da0ccc714fa646a2f03cbfa0dc64ed90a84bf"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.6.11/tailcall-aarch64-apple-darwin"
    sha256 "1825ea1b7faa6b7ee88a1f84576d11fc0ccd3712aa2e3b9045b7fbb371a8cdd9"
  end

  version "v1.6.11"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
