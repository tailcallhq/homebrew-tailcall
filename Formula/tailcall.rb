class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.7/tailcall-x86_64-apple-darwin"
    sha256 "0d7ca0d0494939d89900a96444067f99ce366973754692034e2ebed8ac177299"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.7/tailcall-aarch64-apple-darwin"
    sha256 "79a0a98f4788ec77ac12891f314bd2252273a961727ca5c8a6124d442ed0a865"
  end

  version "v1.4.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
