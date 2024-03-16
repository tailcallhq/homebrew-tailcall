class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.58.1/tailcall-x86_64-apple-darwin"
    sha256 "7e6d635fd192186eca41c41f9f372c3f2efd4ddbb83892124c19179466df8af3"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.58.1/tailcall-aarch64-apple-darwin"
    sha256 "cdbb5f53c94b293214e8316f56f487967df882eb7bcf4ccd30df795f177c926a"
  end

  version "v0.58.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
