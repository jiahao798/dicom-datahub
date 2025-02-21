@echo off

REM 创建主项目目录
mkdir dicom-datahub

REM 创建API网关相关目录
mkdir dicom-datahub\api-gateway\dicom-adapter
mkdir dicom-datahub\api-gateway\rest-api

REM 创建核心服务相关目录
mkdir dicom-datahub\core-service\metadata
mkdir dicom-datahub\core-service\storage

REM 创建持久化相关目录
mkdir dicom-datahub\persistence\postgres
mkdir dicom-datahub\persistence\minio

REM 创建Web UI相关目录
mkdir dicom-datahub\web-ui\viewer
mkdir dicom-datahub\web-ui\admin

REM 创建部署相关目录
mkdir dicom-datahub\deploy\k8s-manifests

REM 创建空的docker-compose.yml文件
type nul > dicom-datahub\deploy\docker-compose.yml

REM 在每个目录中创建.gitkeep文件
for /r dicom-datahub %%d in (.) do (
    type nul > "%%d\.gitkeep"
)

echo 项目结构创建完成！ 