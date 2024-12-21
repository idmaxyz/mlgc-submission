gcloud builds submit --tag gcr.io/submissionmlgc-idama/api-ml/backend

gcloud run deploy backend-mlgc \
--image gcr.io/submissionmlgc-idama/api-ml/backend \
--set-env-vars APP_ENV=production,APP_PORT=8080,APP_HOST=0.0.0.0,MODEL_URL=https://storage.googleapis.com/model-ml-idama/model.json \
--platform managed \
--region asia-southeast2 \
--allow-unauthenticated
