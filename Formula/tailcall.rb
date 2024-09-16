class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.11/tailcall-x86_64-apple-darwin"
    sha256 "1f0a6c5fba8d3da2fcf5bc8469e116cb5ecf4ed36bfdf65b93786ed7e6f027b2"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.11/tailcall-aarch64-apple-darwin"
    sha256 "f8d32a405c4c38840161a6e2976a29c261d54cd929957847ac6f61e823e14349"
  end

  version "v0.111.11"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
