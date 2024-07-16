class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.9/tailcall-x86_64-apple-darwin"
    sha256 "3f6d43a9ea189938042d680f98c7bb90963c0a9d0624761cb3f9fc99822d3f39"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.9/tailcall-aarch64-apple-darwin"
    sha256 "18548c5f4da17997842db5357e0e5ab7f1ee1daa1ed1d3e621f429169c0d6b0d"
  end

  version "v0.96.9"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
