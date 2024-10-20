class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.14/tailcall-x86_64-apple-darwin"
    sha256 "309e564ae39488c9917d0b0946fbb312db156a1eda952a9080724ba1b5bf81ca"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.14/tailcall-aarch64-apple-darwin"
    sha256 "975368925462788b8b31de63f7658552fb359a3f8dd446beeee037b77de13495"
  end

  version "v0.121.14"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
