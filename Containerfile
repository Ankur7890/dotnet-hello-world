FROM registry.access.redhat.com/ubi8/dotnet-90-runtime:9.0.23-1795454512

WORKDIR /app

# OpenShift-friendly configuration
ENV ASPNETCORE_URLS=http://+:8080

COPY publish/ /app/publish/

EXPOSE 8080

ENTRYPOINT ["dotnet", "hello-world-api.dll"]
