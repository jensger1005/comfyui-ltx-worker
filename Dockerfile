FROM runpod/worker-comfyui:latest-base

RUN comfy-node-install comfyui-videohelpersuite comfyui-kjnodes

RUN echo 'network_volume:' > /comfyui/extra_model_paths.yaml && \
    echo '  base_path: /runpod-volume/ComfyUI' >> /comfyui/extra_model_paths.yaml && \
    echo '  checkpoints: models/unet' >> /comfyui/extra_model_paths.yaml && \
    echo '  diffusion_models: models/unet' >> /comfyui/extra_model_paths.yaml && \
    echo '  vae: models/vae' >> /comfyui/extra_model_paths.yaml && \
    echo '  clip: models/clip' >> /comfyui/extra_model_paths.yaml && \
    echo '  latent_upscale_models: models/latent_upscale_models' >> /comfyui/extra_model_paths.yaml
