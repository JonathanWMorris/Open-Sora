pip install -r requirements/requirements-cu121.txt
pip install -v .

pip install packaging ninja
pip install flash-attn --no-build-isolation
pip install -v --disable-pip-version-check --no-cache-dir --no-build-isolation --config-settings "--build-option=--cpp_ext" --config-settings "--build-option=--cuda_ext" git+https://github.com/NVIDIA/apex.git

python scripts/inference.py configs/opensora-v1-2/inference/sample.py --num-frames 4s --resolution 240p --aspect-ratio 9:16 --prompt "a beautiful waterfall"
