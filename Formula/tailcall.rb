class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.1/tailcall-x86_64-apple-darwin"
    sha256 "14855ccb6b15765db700e4919d2c1b88a2caaaf8c4736fd36ca03fbaa0e94e41"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.1/tailcall-aarch64-apple-darwin"
    sha256 "9b6ad1aef8a4f0316448450186e3a3c046853ca149e4231d8ad7e0679e54bfa3"
  end

  version "v0.82.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
