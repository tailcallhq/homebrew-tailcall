class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.24/tailcall-x86_64-apple-darwin"
    sha256 "040d7302dff95b7131480ae2a8ebfe4d5d86f1e6e0842f653899b9fecf999030"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.24/tailcall-aarch64-apple-darwin"
    sha256 "f754711a3a5a16a9da7befadb869ba3f572f45680e5ff6588395b642d0292050"
  end

  version "v1.4.24"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
