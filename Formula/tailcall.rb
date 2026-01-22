class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.6.14/tailcall-x86_64-apple-darwin"
    sha256 "102a19dae6a1b098efd9be71399d23476f1c42c7a972e39e324f485d2a561aaf"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.6.14/tailcall-aarch64-apple-darwin"
    sha256 "c06e5e3023cfe2f92a6fdbe6931d0ac0a0a048f2ddca8b86b3866ddc7626b76c"
  end

  version "v1.6.14"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
