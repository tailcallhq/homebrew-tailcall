class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.90.3/tailcall-x86_64-apple-darwin"
    sha256 "fd960c9c7ac1128dee9cdfdd0ad17edbfc6f4a0f61f7143dfdfe9ffcace82f14"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.90.3/tailcall-aarch64-apple-darwin"
    sha256 "aa6db7e36230925e40c834e005696d947ed20c27e196f5d2338349136cb71513"
  end

  version "v0.90.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
