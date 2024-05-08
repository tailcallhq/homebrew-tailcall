class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.11/tailcall-x86_64-apple-darwin"
    sha256 "e7547c9efbfc7c78bd64f68e19357a388e987c48c5a93d350c0adabf11c3737e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.11/tailcall-aarch64-apple-darwin"
    sha256 "b0a123338ca1707938ff742855886a98486e502ac3927c25c7d6e3ec3747f551"
  end

  version "v0.82.11"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
