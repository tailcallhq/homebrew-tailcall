class Tailcall < Formula
  desc "Tailcall CLI App"
  homepage "https://github.com/tailcallhq/tailcall/"

  # Based on the architecture, set the URL
  if Hardware::CPU.intel?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.0/tailcall-x86_64-apple-darwin"
    sha256 "6cf46935e97ab3e1ea8091f7d442160c496d451dc029c175ff34406bbf4ca8c7"
  elsif Hardware::CPU.arm?
    url "https://github.com/tailcallhq/tailcall/releases/download/v0.14.0/tailcall-aarch64-apple-darwin"
    sha256 "2adc72caf89108469320e8bf5507444fb40113e288b665fc7a4741843289d848"
  end

  version "v0.14.0"

  def install
    if Hardware::CPU.intel?
        executable_name = "tailcall-x86_64-apple-darwin"
    elsif Hardware::CPU.arm?
        executable_name = "tailcall-aarch64-apple-darwin"
    end
    bin.install executable_name => "tc"
  end
end
