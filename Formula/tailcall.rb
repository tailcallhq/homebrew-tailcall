class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.3/tailcall-x86_64-apple-darwin"
    sha256 "6d4ea4109bd0e29c32dff0fffc41931fae6b017d222c33029332d7f77422b315"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.3/tailcall-aarch64-apple-darwin"
    sha256 "dd425d220a9d9837dc7d0a13dc062300ce127b68e12220cdfd92afd3cd6c65fb"
  end

  version "v0.121.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
