#!/bin/bash

# 创建主项目目录
mkdir -p dicom-datahub

# 创建API网关相关目录
mkdir -p dicom-datahub/api-gateway/{dicom-adapter,rest-api}

# 创建核心服务相关目录
mkdir -p dicom-datahub/core-service/{metadata,storage}

# 创建持久化相关目录
mkdir -p dicom-datahub/persistence/{postgres,minio}

# 创建Web UI相关目录
mkdir -p dicom-datahub/web-ui/{viewer,admin}

# 创建部署相关目录
mkdir -p dicom-datahub/deploy/k8s-manifests

# 创建空的docker-compose.yml文件
touch dicom-datahub/deploy/docker-compose.yml

# 在每个目录中创建一个基本的.gitkeep文件以保持目录结构
find dicom-datahub -type d -exec touch {}/.gitkeep \; 