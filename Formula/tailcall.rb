class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.39.2/tailcall-x86_64-apple-darwin"
    sha256 "b94cf956e27461f4efd735962bba4082eac4122c0813bb4178752d310003188e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.39.2/tailcall-aarch64-apple-darwin"
    sha256 "ba1640f6b3822fcc6ed9b84beeaa864e834ade5f1e735598fe4cc71f931f4c17"
  end

  version "v0.39.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
