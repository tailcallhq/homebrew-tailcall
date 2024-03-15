class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.56.2/tailcall-x86_64-apple-darwin"
    sha256 "e4d2fb39734f703ade1b573e7f5a848e223aaa36b21aee7fc662ecdca344682b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.56.2/tailcall-aarch64-apple-darwin"
    sha256 "9cdcedd71c25163f1804a5ee20120d5cd8cc51b8f4e6a371f04db04df29c1bc6"
  end

  version "v0.56.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
