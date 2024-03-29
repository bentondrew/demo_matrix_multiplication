FROM drewantech/drewantech_common:1.0.0
MAINTAINER Benton Drew <benton.s.drew@drewantech.com>
USER root
RUN rm test_common.py
ADD source/ /usr/lib/python3.5/site-packages/demo_matrix_multiplication
ADD service/ .
ENV FLASK_APP demo_matrix_multiplication_web_service.py
ENTRYPOINT ["python3", "-m", "flask", "run"]
CMD ["--host=0.0.0.0", "--port=80"]
