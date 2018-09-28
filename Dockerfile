FROM jupyter/datascience-notebook:a0da0a3dbd5c
USER root
RUN apt-get update && apt-get install -y apt-utils nodejs npm
RUN sudo npm install -g ijavascript && ijsinstall
RUN sudo npm install redis couchbase lodash moment #add_your_node_modules_here
CMD ["jupyter","lab","--ip=0.0.0.0","--allow-root"]

