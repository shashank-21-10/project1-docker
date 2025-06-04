from fastapi import FastAPI
from fastapi.responses import FileResponse
from fastapi.staticfiles import StaticFiles
import os

app = FastAPI()

# Serve the directory containing static files
app.mount("/static", StaticFiles(directory="static"), name="static")

# Root route serves the static HTML page
@app.get("/")
async def read_index():
    return FileResponse("static/index.html")

