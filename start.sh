export PATH="$HOME/miniconda/bin:$PATH"
source $HOME/miniconda/bin/activate
conda activate medibot
pip install flask
pip install langchain
python app.py  # Chạy ứng dụng của bạn
