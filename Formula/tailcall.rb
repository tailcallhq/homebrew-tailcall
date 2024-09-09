class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.111.3/tailcall-x86_64-apple-darwin"
    sha256 "0367a0d683ea4d47b33b69ca50dd19dfd4a2a56c19ac415f1163c1c03690394b"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.111.3/tailcall-aarch64-apple-darwin"
    sha256 "ef04df8191759cdfc42c82bcb276838d8ffda7fb12e6597bbc2819ae1bc9de0f"
  end

  version "v0.111.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
