FROM runpod/worker-comfyui:latest-base

RUN comfy-node-install comfyui-videohelpersuite comfyui-kjnodes

RUN comfy model download --url https://huggingface.co/Lightricks/LTX-2.3-fp8/resolve/main/ltx-2.3-22b-dev-fp8.safetensors --relative-path models/checkpoints/ || true
