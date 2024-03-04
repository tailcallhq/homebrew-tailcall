class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.43.0/tailcall-x86_64-apple-darwin"
    sha256 "137b1d6a23c36c491255f1ab78a687a2a97b7384b779e856dc061603284190eb"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.43.0/tailcall-aarch64-apple-darwin"
    sha256 "d9c94f82577453d37f59df802e30d5f313188fcf780c366bb299e70b24b170eb"
  end

  version "v0.43.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
