class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.6.2/tailcall-x86_64-apple-darwin"
    sha256 "a4beec1b43188c3c48e2aa69f2b9a2b361a479a593d57966b4ef2a590ca48ba9"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.6.2/tailcall-aarch64-apple-darwin"
    sha256 "f734b7d11078fbe18295c3b8907000ba0273d29e5ad3545cda0cd7a405c6c56c"
  end

  version "v1.6.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
