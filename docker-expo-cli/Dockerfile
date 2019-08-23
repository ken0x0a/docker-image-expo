ARG NODE_VERSION=10.16.3
ARG EXPO_CLI_VERSION=3.0.10

# FROM node:${NODE_VERSION}              # 2.03GB
# FROM node:${NODE_VERSION}-alpine       # 1202621360 bytes
# FROM mhart/alpine-node:${NODE_VERSION} # 1200913607 bytes ✅
FROM mhart/alpine-node:${NODE_VERSION}

ARG EXPO_CLI_VERSION

RUN yarn global add expo-cli@${EXPO_CLI_VERSION}

ENTRYPOINT ["expo"]
