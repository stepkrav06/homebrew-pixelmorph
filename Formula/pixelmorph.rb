# Formula for the pixelmorph tool
class Pixelmorph < Formula
  include Language::Python::Virtualenv

  desc "Transform and animate image morphs using optimization algorithms"
  homepage "https://github.com/stepkrav06/pixelmorph"
  url "https://github.com/stepkrav06/pixelmorph/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e70eb84316a0c62c236a9310f1e952c0d83c86b218445bfdfab69a4debaed99e"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"pixelmorph", "--help"
  end
end