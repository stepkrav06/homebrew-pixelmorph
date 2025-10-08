# Formula for the pixelmorph tool
class Pixelmorph < Formula
  desc "Transform and animate image morphs using optimization algorithms"
  homepage "https://github.com/stepkrav06/pixelmorph9b8d46eb8a2e8fa924da646810c34901c144584f2cdb8b3351458dca7c367f74"
  url "https://github.com/stepkrav06/pixelmorph/archive/refs/tags/v0.1.tar.gz"
  sha256 "9b8d46eb8a2e8fa924da646810c34901c144584f2cdb8b3351458dca7c367f74"
  license "MIT"

  depends_on "python@3.11" # Or another recent Python version
# Python dependencies are declared as resources.
  # Homebrew will download these and make them available to pip.
  resource "rich" do
    url "https://files.pythonhosted.org/packages/be/99/757a13b86552296a253c2ae15104a43b23a76313a37286376882200a4d36/rich-13.7.1.tar.gz"
    sha256 "59a7970897645f7c35f991557085a864aa914c62c4a5c53b3b4483758e57722d"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/e1/b0/00b90e75615331dc1423d248b1b59074c7e8ed543c7b4afa3d65bceb812f/psutil-6.0.0.tar.gz"
    sha256 "f10b71957c3855512b070411a03a746ca7a840b1574a42b339f8e434f40f3162"
  end

  resource "numpy" do
    url "https://files.pythonhosted.org/packages/e2/7c/205b9350aef935b6f0e9f6ee8376916c52d083b4b8303e4811f2f05b5f83/numpy-1.26.4.tar.gz"
    sha256 "2a02aba9ed9e42e293db27a4891b2c348d12a2123f8d5bfb048d5d4b8412ac23"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/ac/26/3e84a9e4e6988227b3b320d2e132df73b4e601503c27b0b74134608c02a7/pillow-10.4.0.tar.gz"
    sha256 "42258f91c9e78d91024ed5201111957c5b61b23831818b1cc9e4034aa8fca9b1"
  end

  resource "scipy" do
    url "https://files.pythonhosted.org/packages/4c/13/230691563f68d24177d2716186ca40b05b38d3815049b439e712716e2b86/scipy-1.14.0.tar.gz"
    sha256 "251342a632c02476d3f3ab663e025514f4886b16e41b2b365b2149e29a9883d6"

    # Scipy depends on numpy, so we tell Homebrew about it
    # This ensures numpy is available during scipy's installation
    depends_on "numpy"
  end

  resource "ortools" do
    url "https://files.pythonhosted.org/packages/6c/d2/d0a1b5c2a1361c4091a084c6c547806f022c4516358c2810f81d13f9661f/ortools-9.10.4067.tar.gz"
    sha256 "1c2f90a9c72e259e8316141a238e8a735a2d8e4f5a3b2b8c9e5e709e9929944b"
  end

  resource "wgpu" do
    url "https://files.pythonhosted.org/packages/93/78/3a693c061299298492c10b14c38d61f181f0886c35c2576c3395c9a76d8b/wgpu-0.15.2.tar.gz"
    sha256 "37e96e5948332d73d9d305f63567a29e2c2f6230f24959146522c1995775f562"
  end

  resource "numba" do
    url "https://files.pythonhosted.org/packages/1e/8c/d704c6a6de4c8350fb79144464c45b23d90702d091e9b252d6a581452a36/numba-0.60.0.tar.gz"
    sha256 "a4a824497063d30b9231f4a9b63489e2243d41e7f6424e4d6d07e66c7dd286a9"
  end
  def install
    # Create a virtual environment in the libexec directory
    venv = virtualenv_with_pretty_name(libexec, "python3.11")

    # Install all dependencies defined in the resource blocks
    venv.pip_install resources

    # Install the main pixelmorph package
    venv.pip_install_and_link buildpath

    # Create the wrapper script
    (bin/"pixelmorph").write_env_script libexec/"bin/pixelmorph", {}
  end

  test do
    # A simple test to check if the tool is installed and can run.
    # The --help command should always exit with 0 if it works.
    system "#{bin}/pixelmorph", "--help"
  end
end