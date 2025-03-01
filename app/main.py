from fastapi import FastAPI

# API-Instanz erstellen
app = FastAPI()

# Endpunkt definieren
@app.get("/")
def read_root():
    return {"message": "Felix ist Doof!"}

# Optional: ein weiterer Endpunkt
@app.get("/hello/{name}")
def say_hello(name: str):
    return {"message": f"Hello, {name}!"}
