class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.102.0/tailcall-x86_64-apple-darwin"
    sha256 "36111c17bd9c3bc5914592e4e935cb00d00a04b3f23b6b32340388705367427c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.102.0/tailcall-aarch64-apple-darwin"
    sha256 "ec042681833d6b65eb7cfcac9e6af5bf386857cc4afd6ad77876b03cffb93707"
  end

  version "v0.102.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
