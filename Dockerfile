FROM tensorflow/tfx:1.7.1
RUN pip install --user kfp==1.7.1 pytest
WORKDIR /pipeline
COPY ./ ./
ENV PYTHONPATH="/pipeline:${PYTHONPATH}"