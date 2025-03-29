# 1. Tải Miniconda
curl -fsSL https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o miniconda.sh

# 2. Cài đặt Miniconda vào thư mục HOME
bash miniconda.sh -b -p $HOME/miniconda

# 3. Thêm Conda vào PATH
export PATH="$HOME/miniconda/bin:$PATH"

# 4. Khởi tạo Conda cho Bash
conda init bash

# 5. Tạo môi trường Conda 'medibot' với Python 3.10
conda create -n medibot python=3.10 -y

# 6. Kích hoạt môi trường Conda
source $HOME/miniconda/bin/activate
conda activate medibot

# 7. Cài đặt dependencies từ requirements.txt
pip install -r requirements.txt

pip uninstall pinecone-plugin-inference
pip uninstall pinecone-client pinecone
pip install --no-cache-dir "pinecone[grpc]"


# 8. Chạy file store_index.py
python store_index.py
