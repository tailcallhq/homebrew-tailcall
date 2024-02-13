class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.37.6/tailcall-x86_64-apple-darwin"
    sha256 "c35c809228bb58bf907fec16bb86588e7379065ceb60f16a195a87a9c3f612bd"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.37.6/tailcall-aarch64-apple-darwin"
    sha256 "deb19c09249c22e7bceb9ebc149d8c6c0b0f990e2c976e8b33232f0154079e9e"
  end

  version "v0.37.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
