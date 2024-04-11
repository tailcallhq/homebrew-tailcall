class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.12/tailcall-x86_64-apple-darwin"
    sha256 "0933d7ccc906a0be6527564a7d25823fbc1f794428907ee4f0c874b0f2212a88"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.12/tailcall-aarch64-apple-darwin"
    sha256 "a2b7b8f0bc014d6667f643e3ca07299de094d6eda337e0fcef4efb1f5986cacf"
  end

  version "v0.74.12"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
