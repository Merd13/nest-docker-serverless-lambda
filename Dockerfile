FROM --platform=linux/x86_64 public.ecr.aws/lambda/nodejs:18

COPY . .

RUN npm run build

CMD ["dist/lambda.handler"]

# WORKDIR /usr/src/app

# COPY package*.json ./
# RUN npm install

# COPY . .
# RUN npm run build

# FROM node:16-alpine

# WORKDIR /usr/src/app

# COPY --from=build /usr/src/app .

# COPY .env .
# CMD ["node", "dist/main"]

