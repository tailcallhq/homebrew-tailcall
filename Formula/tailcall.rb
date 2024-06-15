class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.91.0/tailcall-x86_64-apple-darwin"
    sha256 "05120b1a7beae3979ca384ba27cf6c2af100585481135d2385a4d59281b7b808"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.91.0/tailcall-aarch64-apple-darwin"
    sha256 "eb55ab7bb1e9dfa0f7db16c5726aa6b86fac8503220f677e9a54269b772ace13"
  end

  version "v0.91.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
