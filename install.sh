mkdir Downloads || echo "Already exists"
cd Downloads
curl -fsSLo Miniforge3.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-$(uname -m).sh"
bash Miniforge3.sh -b
cd ..
source ~/miniforge3/bin/activate
#yes | python -m pip uninstall tensorflow-macos
#yes | python -m pip uninstall tensorflow-metal

yes | conda install -c apple tensorflow-deps
yes | python -m pip uninstall tensorflow-macos
yes | python -m pip uninstall tensorflow-metal
yes | conda install -c apple tensorflow-deps --force-reinstall
yes | conda install -c apple tensorflow-deps==2.6.0
yes | python -m pip install tensorflow-macos # <-- new
yes | python -m pip install tensorflow-metal
./run_BENCHMARK.sh
