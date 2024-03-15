class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.56.0/tailcall-x86_64-apple-darwin"
    sha256 "ac0fb24f4fe8573684e7a348301cd8c56d32892fb88de5d8e1a0bbd0d1058c66"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.56.0/tailcall-aarch64-apple-darwin"
    sha256 "3ef96619dfda25db28f71026beb72871e86502274b5bd18ab93668fc9f980908"
  end

  version "v0.56.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
