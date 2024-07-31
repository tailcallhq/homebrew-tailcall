class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://tailcall.gateway.scarf.sh/v0.99.13/tailcall-x86_64-apple-darwin"
    sha256 "2d97118b4ef854c2bb7ba0641d829b8a15d85287cbdb9a87df67e2c286c367e2"
  elsif Hardware::CPU.arm?
    url "https://tailcall.gateway.scarf.sh/v0.99.13/tailcall-aarch64-apple-darwin"
    sha256 "f701cda0bf1e113f10bbffc279e86ae0faeb75868f408b7072562180c75a94d4"
  end

  version "v0.99.13"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tailcall"
  end
end
