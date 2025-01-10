class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.3/tailcall-x86_64-apple-darwin"
    sha256 "1d522c710b814df958d7caa6f5d3401a1d016bbf218892fed857db535e26279e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.3/tailcall-aarch64-apple-darwin"
    sha256 "08f03c9cdf49545142bfa14bfe57d71d27ed082922fe11147821c950f14a5688"
  end

  version "v1.4.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
