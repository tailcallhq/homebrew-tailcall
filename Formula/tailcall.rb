class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.29.0/tailcall-x86_64-apple-darwin"
    sha256 "f852837a17672b643a107116222cf3d65e3beff9cd107cdb5ff1f29c23a6e473"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.29.0/tailcall-aarch64-apple-darwin"
    sha256 "d0bfc9ea5ee028a8091a3e9782a409f474c320b6b95ec166c597811f450b4594"
  end

  version "v0.29.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
