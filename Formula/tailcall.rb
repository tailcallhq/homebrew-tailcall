class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.9.0/tailcall-x86_64-apple-darwin"
    sha256 "4c2dc502403a31c26a1017a154d532893c228a8bfeb17498ac5f7986be71c4dc"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.9.0/tailcall-aarch64-apple-darwin"
    sha256 "f1501dbc46858b43597abdddf05ee1e9ec71cf53f35dedd8ec38879ddd40ac86"
  end

  version "v0.9.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
