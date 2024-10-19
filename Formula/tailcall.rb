class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.12/tailcall-x86_64-apple-darwin"
    sha256 "c30c88d6cbf70f1e36f8eae6cc7346adff2cd45add9ba703c74e5447e274736d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.12/tailcall-aarch64-apple-darwin"
    sha256 "79358725c21365f03d5f1112957c377e9d12755eacf1483ca68e1e6739fc497b"
  end

  version "v0.121.12"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
