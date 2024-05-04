class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.82.0/tailcall-x86_64-apple-darwin"
    sha256 "ef7a0a1a13bfde28e3066dd85a83df6b1dbc24865f8f081c2b7985fea6a8d25b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.82.0/tailcall-aarch64-apple-darwin"
    sha256 "aa08f9e3b74188b90fa1dc9a34d094d2162e2086a32a51e414321c6d7baa6738"
  end

  version "v0.82.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
