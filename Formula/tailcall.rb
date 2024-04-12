class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.15/tailcall-x86_64-apple-darwin"
    sha256 "b18afdf85f8be0f78b55714fdf5bd160cc3c62204d63903767f54b2c1121dfd7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.15/tailcall-aarch64-apple-darwin"
    sha256 "5d4afbd8d3f6c75862d7ee61ee0913f9f6901a8f86046b14187712560c51b65e"
  end

  version "v0.74.15"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
