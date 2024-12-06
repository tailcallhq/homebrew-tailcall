class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.135.3/tailcall-x86_64-apple-darwin"
    sha256 "3ddd1999e9b333a81acb496c7ba02330cb801606d5d9a83c53ab3d81a83ea735"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.135.3/tailcall-aarch64-apple-darwin"
    sha256 "49a1f1f64e2e33067967a6e2bfb7feb6e6d5a1fdba3372627d5750cb55f2267f"
  end

  version "v0.135.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
