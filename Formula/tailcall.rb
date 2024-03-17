class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.61.0/tailcall-x86_64-apple-darwin"
    sha256 "af14fc7e48d40cd873588b0341ceb2f9f4dfa5e89cc404edf8efe5005ada2c07"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.61.0/tailcall-aarch64-apple-darwin"
    sha256 "15528b59ec11eb9cfcf3743e2a2e942b8788bd5ce70fc2316e58756117df24f3"
  end

  version "v0.61.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
