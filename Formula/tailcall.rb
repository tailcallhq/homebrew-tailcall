class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.34.0/tailcall-x86_64-apple-darwin"
    sha256 "8609ef3b1f02f2eb39dc699e58e6b340e757d479b49e40a47fb33db022e475dd"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.34.0/tailcall-aarch64-apple-darwin"
    sha256 "d6a321053beb42ea728fa598ce2bdebd71555b9cfdebe66612857efdabffb475"
  end

  version "v0.34.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
