docker run --rm -p 8501:8501 \
  --mount type=bind,\
source=/Users/zhengwenchen/Desktop/"Data Science"/Projects/"Movie recommender"/movie-recommender-two-tower-nn/two_container/server/user_embedding_model,\
target=/models/user_embedding_model \
  -e MODEL_NAME=user_embedding_model -t tensorflow/serving &

  curl -d '{"instances": [[3.950000000000000178e+00,4.250000000000000000e+00,0.000000000000000000e+00,0.000000000000000000e+00,4.000000000000000000e+00,4.120000000000000107e+00,4.000000000000000000e+00,4.040000000000000036e+00,0.000000000000000000e+00,3.000000000000000000e+00,4.000000000000000000e+00,0.000000000000000000e+00,3.879999999999999893e+00,3.890000000000000124e+00]]}' \
  -X POST http://localhost:8501/v1/models/user_embedding_model:predict
