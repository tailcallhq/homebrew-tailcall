class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.4.10/tailcall-x86_64-apple-darwin"
    sha256 "dae5f41b85d8d7b83e73382120238ce2568064582d20367468b25e47e512556a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.4.10/tailcall-aarch64-apple-darwin"
    sha256 "4eeca311f3f66d425b61438c26c5773eab3add823177a1830c8cc3cd7e36179a"
  end

  version "v1.4.10"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
