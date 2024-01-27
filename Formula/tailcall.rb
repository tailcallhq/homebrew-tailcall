class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.25.0/tailcall-x86_64-apple-darwin"
    sha256 "49d1f53b7af5faa38fb210ee270f02041a634b1bc3b0de4f6c7c49c0698fa2e0"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.25.0/tailcall-aarch64-apple-darwin"
    sha256 "6f97288abf4f3ada89ef1caf67514f75feb2fabc8af604fa6e3b3185cb4c2cf1"
  end

  version "v0.25.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
