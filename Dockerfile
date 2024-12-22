FROM node:22.11.0-slim
ENV NODE_ENV=development
USER node
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY --chown=node:node ./*.*js* ./*.ts ./
COPY --chown=node:node ./public ./public

ENV HOSTNAME="0.0.0.0"

CMD ["npm", "run", "dev"]
