class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.104.8/tailcall-x86_64-apple-darwin"
    sha256 "b00eb2c7be471ac45b24a1b40c3571ab0a77878e0c57d23bba1e6e619134a438"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.104.8/tailcall-aarch64-apple-darwin"
    sha256 "ad26aed526f881d23ecbeba78dc86e30f13e0f58f6ee7890b94bebe0f2902691"
  end

  version "v0.104.8"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
