class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.3.0/tailcall-x86_64-apple-darwin"
    sha256 "627a0a51c2525f65c5a7aabd97dc58458dbbb3448e11abf4d8ef68bfd2c83278"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.3.0/tailcall-aarch64-apple-darwin"
    sha256 "5fd8fea96cc7b430daa78e580c28c33ba9d64a2eb3c0a9640f4f4b987c5661b7"
  end

  version "v1.3.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
