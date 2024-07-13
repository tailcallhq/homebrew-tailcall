class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.4/tailcall-x86_64-apple-darwin"
    sha256 "033d48f88f3b0530f0212d60adab287642cef25b1d135404bcf6da421a833c6c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.4/tailcall-aarch64-apple-darwin"
    sha256 "be9b44a2b55991688b9188ec451eba0bda892db8c760d8991496e2c4a9da5443"
  end

  version "v0.96.4"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
