FROM node:12.2.0

RUN mkdir -p /app
WORKDIR /app

COPY . /app

# Pre-Build (download node modules, http-server, etc)
RUN wget https://codejudge-starter-repo-artifacts.s3.ap-south-1.amazonaws.com/web-micro-project/javascript/vue/3/npm/pre-build.sh
RUN chmod 775 ./pre-build.sh
RUN ./pre-build.sh

# Add extra docker commands here (if any)...

# Build the app
RUN wget https://codejudge-starter-repo-artifacts.s3.ap-south-1.amazonaws.com/web-micro-project/javascript/vue/3/npm/build.sh
RUN chmod 775 ./build.sh
RUN ./build.sh

# Add extra docker commands here (if any)...

WORKDIR /app/dist

# Run the app
RUN wget https://codejudge-starter-repo-artifacts.s3.ap-south-1.amazonaws.com/web-micro-project/javascript/common/run.sh
RUN chmod 775 ./run.sh
CMD ./run.sh