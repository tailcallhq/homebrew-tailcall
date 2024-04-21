class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.76.10/tailcall-x86_64-apple-darwin"
    sha256 "b6611fb4992f0f0e77012d345f2ae476a3f3774a65781a285f5a1bf315d06dbc"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.76.10/tailcall-aarch64-apple-darwin"
    sha256 "cfb4f5b25df652b67651291b8abbc3915fa817671775e4c39c27bb443a3d375f"
  end

  version "v0.76.10"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
