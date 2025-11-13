#!/usr/bin/env bash
set -euo pipefail

python -m venv venv --prompt ssm-bench
source venv/bin/activate

pip install --upgrade pip setuptools wheel hatchling

# Install PyTorch from their registry
pip install torch==2.2.1 torchvision==0.17.1 torchaudio==2.2.1 --index-url https://download.pytorch.org/whl/cu118

# Needs --no-build-isolation otherwise it fails installation
pip install causal-conv1d==1.2.0.post1 --no-build-isolation

# Needs to be installed from Google's own registry
pip install "jaxlib==0.4.25+cuda11.cudnn86" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html 

pip install -r requirements.txt

pip install mamba-1.1.4/ --no-build-isolation
pip install accelerated-scan-0.1.2/ --no-build-isolation