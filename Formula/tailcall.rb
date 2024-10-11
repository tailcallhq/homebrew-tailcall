class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.121.1/tailcall-x86_64-apple-darwin"
    sha256 "a1fd6f97e2281438d2ba641b16433a95cee81afa3759004d4dfa93764d84d95b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.121.1/tailcall-aarch64-apple-darwin"
    sha256 "e9adc5a617406cab2f8b008ffa62d1b144cf24336ceb4e628153f88541709b54"
  end

  version "v0.121.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
