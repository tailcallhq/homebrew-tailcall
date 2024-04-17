class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.76.2/tailcall-x86_64-apple-darwin"
    sha256 "67414a5f61732e60927c8c1ec2ee0225b2964bd44bedb3fe4ee6abc3d8cfc1a9"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.76.2/tailcall-aarch64-apple-darwin"
    sha256 "f46aae68e8286cbe93033075bfeb15e01823d0917a116972646711434925035f"
  end

  version "v0.76.2"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
