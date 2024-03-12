class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.49.3/tailcall-x86_64-apple-darwin"
    sha256 "b19d50ee4e201bc53ae1129bc70b4505e99c3d33f59033cae8949a7dd13b516c"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.49.3/tailcall-aarch64-apple-darwin"
    sha256 "721d8ddd2c53afd10bec3c6742a5078aad666c12f1ea7a2d13c1c8c1bcc990ef"
  end

  version "v0.49.3"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
