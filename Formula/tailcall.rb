class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.98.0/tailcall-x86_64-apple-darwin"
    sha256 "04ca21d9464bdf0534deacab6dcd954f47397ac52fed3e774326a654b2e45a8d"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.98.0/tailcall-aarch64-apple-darwin"
    sha256 "830edb19ea390ecaf717d6d06b12a5c284aa1d901b7f130bd4f8d31b69fc29be"
  end

  version "v0.98.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
