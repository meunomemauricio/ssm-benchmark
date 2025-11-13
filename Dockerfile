FROM pytorch/pytorch:2.2.1-cuda11.8-cudnn8-devel

WORKDIR /ssm-bench

COPY requirements.txt /ssm-bench/
COPY mamba-1.1.4/ /tmp/mamba-1.1.4/
COPY accelerated-scan-0.1.2/ /tmp/accelerated-scan-0.1.2/

RUN python -m pip install --upgrade pip setuptools wheel hatchling && \
    python -m pip install causal-conv1d==1.2.0.post1 --no-build-isolation && \
    python -m pip install "jaxlib==0.4.25+cuda11.cudnn86" \
        -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html && \
    python -m pip install -r /ssm-bench/requirements.txt && \
    python -m pip install /tmp/mamba-1.1.4/ --no-build-isolation && \
    python -m pip install /tmp/accelerated-scan-0.1.2/ --no-build-isolation && \
    rm -rf /tmp/mamba-1.1.4 /tmp/accelerated-scan-0.1.2

COPY . /ssm-bench
CMD ["python", "train.py"]