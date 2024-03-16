class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.57.0/tailcall-x86_64-apple-darwin"
    sha256 "e5eff329ee9d4d79b269892311d1a4de50a7adb2b6a258e57ffbca00b341c519"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.57.0/tailcall-aarch64-apple-darwin"
    sha256 "8640ac405bb1b479f5f2813b8dfdacc83862148d760e5194df00ac104bc16ae1"
  end

  version "v0.57.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
