class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.5/tailcall-x86_64-apple-darwin"
    sha256 "487769191d58ba73fb442045ecf71fc47f76afed68d858a6c518dc8aba69be3b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.5/tailcall-aarch64-apple-darwin"
    sha256 "b0a82651330c5bca46931d75310f62ca7fcbf60783f5a844de5209ef1ed5293a"
  end

  version "v0.96.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
