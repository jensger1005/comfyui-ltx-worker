FROM runpod/worker-comfyui:latest-base

RUN comfy-node-install comfyui-videohelpersuite comfyui-kjnodes
