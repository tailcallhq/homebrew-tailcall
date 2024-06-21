class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.91.3/tailcall-x86_64-apple-darwin"
    sha256 "e96044e3db8e8df703906f904accfc4b1f573554bf6164d92527f4d16ed73bb5"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.91.3/tailcall-aarch64-apple-darwin"
    sha256 "8a5286ff2385d8fdbe30f08bda2d9bc3c1d2f3e83e21b1293d496d8469a3c77f"
  end

  version "v0.91.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
