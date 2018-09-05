FROM java:8
COPY . /minecraft
ENTRYPOINT ["./minecraft/ServerStart.sh"]
