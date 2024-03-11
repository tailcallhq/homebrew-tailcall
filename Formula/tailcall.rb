class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.49.1/tailcall-x86_64-apple-darwin"
    sha256 "c7897952bc8293b81ac6cdbc530f53ed7ce5cd4b7685d92ceaca1661a58427ad"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.49.1/tailcall-aarch64-apple-darwin"
    sha256 "d5ddce0479ca78a5f56d940157ddfaa8fd904805a1d5a01d5051f23a74f28fff"
  end

  version "v0.49.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
