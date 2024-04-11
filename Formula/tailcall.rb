class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.74.14/tailcall-x86_64-apple-darwin"
    sha256 "99a00313ef368e0e9c179a8df921f48c96269a3e89d6cafc719d02a50442ef13"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.74.14/tailcall-aarch64-apple-darwin"
    sha256 "46b51ea8bf6d2d5b249275f080dca69abae489c97cb42a1aa5b743845781d9d9"
  end

  version "v0.74.14"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
