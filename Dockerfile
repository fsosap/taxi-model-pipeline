FROM tensorflow/tfx:1.7.1
RUN pip3 install kfp==1.7.1 pytest
WORKDIR /pipeline
COPY ./ ./
ENV PYTHONPATH="/pipeline:${PYTHONPATH}"