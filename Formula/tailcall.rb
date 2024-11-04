class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.124.0/tailcall-x86_64-apple-darwin"
    sha256 "fccdd72a88c967b93a88758bab8431a54ef2eb3b34830014008e9fc74fc7180e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.124.0/tailcall-aarch64-apple-darwin"
    sha256 "b0e6cd0b43670f6ea1bac886cbf9b0e2e6d131be88f31f6ef07dd77d9e24fe9b"
  end

  version "v0.124.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
