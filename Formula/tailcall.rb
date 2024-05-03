class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.81.0/tailcall-x86_64-apple-darwin"
    sha256 "ac4cce3955d068dc7bc4aeeb8b5a480e2ba97687979f91e824c083055069f6f7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.81.0/tailcall-aarch64-apple-darwin"
    sha256 "6ed304de2d168553366f6dfeb78ac50d8bf8f5beaf8c8e37117e618e0186b339"
  end

  version "v0.81.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
