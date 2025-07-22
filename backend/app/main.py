from fastapi import FastAPI
from app.api.router import router as api_router
from app.db import init_db

app = FastAPI(title="Spotify Clone API")

@app.on_event("startup")
async def startup_event():
    await init_db()

app.include_router(api_router)
