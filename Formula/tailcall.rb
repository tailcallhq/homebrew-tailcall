class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.120.9/tailcall-x86_64-apple-darwin"
    sha256 "4adae968b29ddc994254448efce58a4bfa07219e363a69a943760c848f6c6f76"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.120.9/tailcall-aarch64-apple-darwin"
    sha256 "b1a22665c297b2cb332cd6fc3f0d4130bb3ecf244cc907196991a2d4ee6acffc"
  end

  version "v0.120.9"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
