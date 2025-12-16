class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v1.6.12/tailcall-x86_64-apple-darwin"
    sha256 "36c3cefee8b9e65539f1a7fe3ba11b127fd2cc56bc709df7f61fa35690563c26"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v1.6.12/tailcall-aarch64-apple-darwin"
    sha256 "f3e458a1aecf5541805da750119f7eec386798832c9e1a37fe77e1e68421d7a6"
  end

  version "v1.6.12"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
