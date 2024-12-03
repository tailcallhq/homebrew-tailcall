class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.133.1/tailcall-x86_64-apple-darwin"
    sha256 "008a262a902180305c1970288863c4ebda1cdd35ac638ec18ff9ad1f57182634"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.133.1/tailcall-aarch64-apple-darwin"
    sha256 "7aa9a17b4d72f1eb725e48f5b31ae669daad0518a97d367f634a7ce57f1dda2f"
  end

  version "v0.133.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
