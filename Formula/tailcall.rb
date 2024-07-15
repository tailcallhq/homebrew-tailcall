class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.6/tailcall-x86_64-apple-darwin"
    sha256 "846c6dde5bf813f30239d5fd5f48a01316d4daeb013dd3debca34dd75ef5c876"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.6/tailcall-aarch64-apple-darwin"
    sha256 "dd40fee9738885764ad48b66365290773fb33a5e1e518bbc118245e32d635aac"
  end

  version "v0.96.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
