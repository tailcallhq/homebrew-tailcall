class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.72.0/tailcall-x86_64-apple-darwin"
    sha256 "599d152c9480688728e1fbef3381ecf1cde1c0cbf2c059f63bb818b3fa2f9dba"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.72.0/tailcall-aarch64-apple-darwin"
    sha256 "7329205e6f076f685d36661f2a12a5a53e60ab58ac0a4304bb6497ea62471c3e"
  end

  version "v0.72.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
