class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.122.3/tailcall-x86_64-apple-darwin"
    sha256 "02719c40a3a0b9a677d25192e7973db8e5779ad22d5347b489f8eb26c213ca44"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.122.3/tailcall-aarch64-apple-darwin"
    sha256 "392a29f2fb0fba080b7640964ce5a1b60b1ab589787d28560a446aa6d241642d"
  end

  version "v0.122.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
