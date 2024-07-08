class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.11/tailcall-x86_64-apple-darwin"
    sha256 "a7fb30b9d769e866b93d430fe4811e85fdb26b0fb02deaeddc1bf0335410e196"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.11/tailcall-aarch64-apple-darwin"
    sha256 "8219b95e2dd9970351fb6130aa6fe4a551c3934dd0a0ccae39990ed5c18f2ab2"
  end

  version "v0.95.11"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
