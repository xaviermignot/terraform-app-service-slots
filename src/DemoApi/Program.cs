var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

var version = "0.1.0";
var valueFromConf = app.Configuration["someKey"] ?? "none";

app.MapGet("/", () => $"v{version}, value from configuration: {valueFromConf}");

app.Run();
