class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.18/tailcall-x86_64-apple-darwin"
    sha256 "b48be95ffc36432e7cd5ca62d055386ac50471ba7723f7f1e58b7a387f1525cb"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.18/tailcall-aarch64-apple-darwin"
    sha256 "72d0074e2f97691d974abe07a4720562edc576d96389b0ac841b9adad8f7263a"
  end

  version "v0.82.18"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
