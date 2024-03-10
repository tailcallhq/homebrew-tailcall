class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.47.6/tailcall-x86_64-apple-darwin"
    sha256 "5e22969d855e287d6fa633d27cbea998b6e37d2c377e557a99e31f64576fa08e"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.47.6/tailcall-aarch64-apple-darwin"
    sha256 "e7ce5be41664dce8d08d34034470c15911db63eccb8c71c9032c13e2c3dcc170"
  end

  version "v0.47.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
