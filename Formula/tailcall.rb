class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.39.8/tailcall-x86_64-apple-darwin"
    sha256 "aca2afb7d9d5c8b45527f837a0ab0dbaee892eb2992ba01058a70105267f7a80"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.39.8/tailcall-aarch64-apple-darwin"
    sha256 "e50dab9e45501b2d797c375824733cf65efbc93742a4557224e3e2f57e55e5e8"
  end

  version "v0.39.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
