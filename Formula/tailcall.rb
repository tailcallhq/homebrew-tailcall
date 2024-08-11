class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.100.1/tailcall-x86_64-apple-darwin"
    sha256 "18d275efd908261200d1a9bcab1e0fbe3bc27ccf710f2ddc4156bea992b0b91a"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.100.1/tailcall-aarch64-apple-darwin"
    sha256 "8d006f7833c17f6fcfd0e9180ceffa7f80fd3473bd27ef8bf8d8ec5ad3514f64"
  end

  version "v0.100.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
