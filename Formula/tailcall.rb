class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.15/tailcall-x86_64-apple-darwin"
    sha256 "ca6e3f0674663e67ff8e49526ce50c06542387a1b255b26136e85bb12c332129"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.15/tailcall-aarch64-apple-darwin"
    sha256 "3d878c995f27e2a3104337a9545cd427a890e94b2eb6c50919c9a972c7202a03"
  end

  version "v0.99.15"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
