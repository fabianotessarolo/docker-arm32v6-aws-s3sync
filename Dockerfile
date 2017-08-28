# Set the base image
FROM hypriot/rpi-python

## BEGIN INSTALLATION

# Install the AWS Cli
RUN pip install awscli

# Add convenience scripts
#COPY files/* /opt/

ENV KEY=,SECRET=,REGION=,BUCKET=,BUCKET_PATH=/,CRON_SCHEDULE="0 1 * * *",PARAMS=

VOLUME ["/data"]

ADD *.sh /
RUN chmod +x /*.sh

ENTRYPOINT ["/start.sh"]
CMD [""]