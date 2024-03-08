class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.46.2/tailcall-x86_64-apple-darwin"
    sha256 "ca239e7a68b951e0dd1ba852746b3f4d5f8b67437285aef8629783f568175004"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.46.2/tailcall-aarch64-apple-darwin"
    sha256 "2409259fd29bc7a1522fd4af76033907fe11859601f759ce07a250b991676650"
  end

  version "v0.46.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
