from fastapi import FastAPI

app = FastAPI()


@app.get("/health_check")
def _health_check():
    return {"health_check": "ok"}
