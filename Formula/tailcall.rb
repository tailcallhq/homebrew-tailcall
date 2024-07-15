class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.7/tailcall-x86_64-apple-darwin"
    sha256 "9d1c7fe124c405a28c3d43102ddbc0a6a9e749a77ffd44f8966a23841ca42e90"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.7/tailcall-aarch64-apple-darwin"
    sha256 "8b2757ed3bef7a60308e4077f0f468ad7921ee8c294d934e4d43a67e7142f869"
  end

  version "v0.96.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
