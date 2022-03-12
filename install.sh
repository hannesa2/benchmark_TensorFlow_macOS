mkdir Downloads
cd Downloads
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh
cd ..
chmod +x ./Downloads/Miniforge3-MacOSX-arm64.sh
sh ./Downloads/Miniforge3-MacOSX-arm64.sh
source ~/miniforge3/bin/activate
python -m pip uninstall tensorflow-macos
python -m pip uninstall tensorflow-metal

conda install -c apple tensorflow-deps
python -m pip uninstall tensorflow-macos
python -m pip uninstall tensorflow-metal
conda install -c apple tensorflow-deps --force-reinstall
conda install -c apple tensorflow-deps==2.6.0
python -m pip install tensorflow-macos # <-- new
python -m pip install tensorflow-metal
./run_BENCHMARK.sh
