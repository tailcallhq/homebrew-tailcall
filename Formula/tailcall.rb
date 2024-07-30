class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.5/tailcall-x86_64-apple-darwin"
    sha256 "4cd279139f70f240879f07ca7c4af4d24a5e6b2bed77e39b2f62219d0ba8de5d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.5/tailcall-aarch64-apple-darwin"
    sha256 "1b9a7d4732bd27b0eb169c7bfe0ab4c1f4b50cc17ef0ca8dd7f0e0b36d1f37fb"
  end

  version "v0.99.5"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
