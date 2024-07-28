class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.2/tailcall-x86_64-apple-darwin"
    sha256 "33c70b6f6038dcb507c00b5d8ea0071eee38702ce1d6a6568edf0d8a7a8fa21e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.2/tailcall-aarch64-apple-darwin"
    sha256 "dfe008da688751a7143b5a0b646886285a059283a7d3d1bc4a5846a434a8803f"
  end

  version "v0.99.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
