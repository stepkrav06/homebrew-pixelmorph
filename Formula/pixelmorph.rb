# Formula for the pixelmorph tool
class Pixelmorph < Formula
  include Language::Python::Virtualenv

  desc "Transform and animate image morphs using optimization algorithms"
  homepage "https://github.com/stepkrav06/pixelmorph"
  url "https://github.com/stepkrav06/pixelmorph/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f6f56dbb09231c235e9ab6da39292d5960ef21320f7c664370423e990e8e08e2"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"pixelmorph", "--help"
  end
end