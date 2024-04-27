class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.78.7/tailcall-x86_64-apple-darwin"
    sha256 "9edfb4baf2781636d178097297cea66b6aa1c643552f0c3bac93935d0ecca268"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.78.7/tailcall-aarch64-apple-darwin"
    sha256 "71bbf72a13ce10a31c329ea59be0e651b89b9510f761bb5a0f01be3e824c2857"
  end

  version "v0.78.7"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
