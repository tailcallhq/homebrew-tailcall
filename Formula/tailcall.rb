class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.92.6/tailcall-x86_64-apple-darwin"
    sha256 "62dbf765fb89a9f50fbb57fdedcfab039ea5dcdef8351fb2596d8a610b6072b7"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.92.6/tailcall-aarch64-apple-darwin"
    sha256 "a3eb5bb8325b46c313b0856981921b1805fc211acfa8f48705a1541096ec1fc3"
  end

  version "v0.92.6"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
