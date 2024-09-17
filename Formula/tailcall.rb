class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.14/tailcall-x86_64-apple-darwin"
    sha256 "78c11fa89dd63bd265d18b071d12bfb68b3616f40a9d1ef6d2896757f467c4cf"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.14/tailcall-aarch64-apple-darwin"
    sha256 "c57bd3a079a2d90f9bac81ec90dbf7d410a7c759d14837a7a234afdde3bddcf9"
  end

  version "v0.111.14"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
