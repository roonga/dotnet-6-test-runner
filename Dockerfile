FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

## install sonar scanner depenedencies
RUN apt-get update && apt-get dist-upgrade -y \
    && apt-get install -y openjdk-17-jre \
    && apt-get install -y libxml2

## Install coverage tools
RUN dotnet tool install -g dotnet-coverage
RUN dotnet tool install -g dotnet-sonarscanner
ENV PATH="${PATH}:/root/.dotnet/tools"
