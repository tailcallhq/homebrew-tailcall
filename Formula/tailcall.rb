class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.68.2/tailcall-x86_64-apple-darwin"
    sha256 "b72849b031c56600c37e1fe7463e2e41f17777823af40cda739dd697bf22a1b3"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.68.2/tailcall-aarch64-apple-darwin"
    sha256 "1b55d85efcd4fed2ee890d5f82391817239d25a95598081a0ca4ff267058e410"
  end

  version "v0.68.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
