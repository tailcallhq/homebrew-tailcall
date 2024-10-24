class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.122.6/tailcall-x86_64-apple-darwin"
    sha256 "7b3a6c012db4c2a9e634738aa10364c11d4b5c61116a226b3563d1f8c0b54a4d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.122.6/tailcall-aarch64-apple-darwin"
    sha256 "12ebc6928430f256183728d642ae3b1ec0a2c9bd25340e773541549d822ff8b7"
  end

  version "v0.122.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
