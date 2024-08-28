class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.105.2/tailcall-x86_64-apple-darwin"
    sha256 "202986c20f2ad07576cbad38706f04f2bbd2bb3b2c17eb188d4dbf78260165f8"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.105.2/tailcall-aarch64-apple-darwin"
    sha256 "29d2eff59f17af614f196975b89fbeb053bf98809e7006d056b83725b663ce0f"
  end

  version "v0.105.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
