#
FROM python:3.10.5



#
WORKDIR /MLops_training



#
COPY ./requirements.txt /MLops_training/requirements.txt



#
RUN pip install --no-cache-dir --upgrade -r /MLops_training/requirements.txt



#
COPY ./app /MLops_training/app



#
EXPOSE 5000


WORKDIR /MLops_training/app
#
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000"]