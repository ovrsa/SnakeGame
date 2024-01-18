# バージョンの指定
FROM python:3.11
# 環境変数の指定
ENV PYTHONUNBUFFERED 1  
# 作業ディレクトリの指定
RUN mkdir /code
WORKDIR /code
# requirements.txtをcodeにコピー
COPY requirements.txt /code/
# requirements.txtをインストール
RUN pip install -r requirements.txt
# ローカルのcodeをコンテナのcodeにコピー
COPY . /code/