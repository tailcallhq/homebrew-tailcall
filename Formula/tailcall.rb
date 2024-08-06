class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.22/tailcall-x86_64-apple-darwin"
    sha256 "2262eefa9cf4989b52d788c45a61785ec3a08537e73e49fb48e410e4221f66de"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.22/tailcall-aarch64-apple-darwin"
    sha256 "e91669474f62abcc669d0f780df99a4af6f6308bc5b4b343bf8bfded157bf7ec"
  end

  version "v0.99.22"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
