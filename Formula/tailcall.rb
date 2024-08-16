class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.3/tailcall-x86_64-apple-darwin"
    sha256 "9b82c17bc80d7be3f2acf1536cca7b6463e39763fb01db0c0a670eb874ef3e3e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.3/tailcall-aarch64-apple-darwin"
    sha256 "a38bdcc8e8820729043d3594ec18b9e33075948cf3174dca33bba78d20db86d1"
  end

  version "v0.104.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
