class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.70.3/tailcall-x86_64-apple-darwin"
    sha256 "fffd90eab3e30a5c2e75bf679b651f6aafdcfc8d85ddf11115b67237b06c86b5"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.70.3/tailcall-aarch64-apple-darwin"
    sha256 "17b9b1b6e0701b56d9eb28b1b81bf328e52c41b08fe808b13bb169963293e897"
  end

  version "v0.70.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
