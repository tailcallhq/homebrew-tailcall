class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.40.7/tailcall-x86_64-apple-darwin"
    sha256 "74f2e6cda0fe45a5013220c3029999c1aebb97701bc507cb0501b7eb2811e9b4"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.40.7/tailcall-aarch64-apple-darwin"
    sha256 "764302ec22bf478de4d7b19fc3baeea20eb94112c313dc091018f494146f3268"
  end

  version "v0.40.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
