FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime
COPY . .
RUN pip3 install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
ENV model_path="/model"

EXPOSE 8000

CMD [ "python3", "api.py" ]
