FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app
RUN git clone https://github.com/haondt/Gabbro-Secret-Manager.git

WORKDIR /app/Gabbro-Secret-Manager/Gabbro-Secret-Manager
RUN dotnet publish Gabbro-Secret-Manager/Gabbro-Secret-Manager.csproj -c Release -o /app/publish /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
WORKDIR /app
COPY --from=build /app/publish .
EXPOSE 8080
ENTRYPOINT ["dotnet", "Gabbro-Secret-Manager.dll"]

