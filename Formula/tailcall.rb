class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.96.17/tailcall-x86_64-apple-darwin"
    sha256 "62e1a20b9ea1f5fc051b666d09d7a36022512d8d57279fcc7fa9339a251dbb84"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.96.17/tailcall-aarch64-apple-darwin"
    sha256 "5e797cc0ce0d3fc84b1bad1a5dff81f6ad52c5947c4c092feead080a49d7e707"
  end

  version "v0.96.17"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
