class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.83.0/tailcall-x86_64-apple-darwin"
    sha256 "213d193f425779638ba9f2231b59a673261d7b097c973613438346410cc66fd9"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.83.0/tailcall-aarch64-apple-darwin"
    sha256 "ffff92bbb0e6442a6c2ed7c290684caadb775a049b01e7b5dcbd1fdb050baf5d"
  end

  version "v0.83.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
