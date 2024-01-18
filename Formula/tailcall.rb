class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.21.1/tailcall-x86_64-apple-darwin"
    sha256 "02ac4befece20935d70acda051ec693cc23e4e57c1c2db3b246254493bb37939"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.21.1/tailcall-aarch64-apple-darwin"
    sha256 "2fcfb20153d6797fb607a3e93f6538050f4de182d9d943904e99c1aac92f0d9b"
  end

  version "v0.21.1"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
