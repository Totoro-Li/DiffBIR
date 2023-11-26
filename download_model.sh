sudo apt update && sudo apt install -y aria2

aria2c -x 16 -d weights -o general_full_v1.ckpt https://huggingface.co/lxq007/DiffBIR/resolve/main/general_full_v1.ckpt

aria2c -x 16 -d weights -o general_swinir_v1.ckpt https://huggingface.co/lxq007/DiffBIR/resolve/main/general_swinir_v1.ckpt
