class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.78.1/tailcall-x86_64-apple-darwin"
    sha256 "0ccd4d0936a73e22c67f3dfd6715d7e5f1e0a0f2855cef8577929a5085c74cec"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.78.1/tailcall-aarch64-apple-darwin"
    sha256 "7a758ab22bae29877292c41e50e768dc1de709e4ce1ec9d618d5c215f994730d"
  end

  version "v0.78.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
