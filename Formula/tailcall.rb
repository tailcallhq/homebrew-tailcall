class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.17/tailcall-x86_64-apple-darwin"
    sha256 "cf81325818b0eb3a68741af6c05393887bd8da2f7831fed5982093ebf04ff22a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.17/tailcall-aarch64-apple-darwin"
    sha256 "1dc740684f6dbd3ca7fde3bbe13ffaac8b6e2f1e1b2afe27218697c665b31d4b"
  end

  version "v0.99.17"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
