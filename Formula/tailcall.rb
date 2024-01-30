class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.26.0/tailcall-x86_64-apple-darwin"
    sha256 "6cf47ca824b8abe0cdf4352239cf71a9587dd462e89cf9deceb102e2cad04f80"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.26.0/tailcall-aarch64-apple-darwin"
    sha256 "233070b76387616d4249d03cf79d66f00bbfb128e3286553c4791bbe6f1da079"
  end

  version "v0.26.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
