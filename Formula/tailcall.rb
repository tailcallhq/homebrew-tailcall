class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.39.5/tailcall-x86_64-apple-darwin"
    sha256 "184851bdf269eb38475e05f09de0a43546529ea04a869fc9dbf3c3c9ddfd4424"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.39.5/tailcall-aarch64-apple-darwin"
    sha256 "fed1ba746e95b781bfd931024dd986631d200b8977506053a90baeef5a65fe04"
  end

  version "v0.39.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
