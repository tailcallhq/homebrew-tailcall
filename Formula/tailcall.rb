class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.95.15/tailcall-x86_64-apple-darwin"
    sha256 "6f8e4c878e1d12a337694c49fc73bfeb645c1a907dbd4691fd4401f467678968"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.95.15/tailcall-aarch64-apple-darwin"
    sha256 "027aa4c60bf5d4cd38c4abfdf0912d678ad999fff534f551cf60fb26072f2709"
  end

  version "v0.95.15"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
