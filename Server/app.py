import csv
from os import path
from typing import Dict
from flask import Flask, jsonify, request

CSV_FILE_NAME = "users.csv"
app = Flask(__name__)


@app.post("/api/user")
def get_user():
    json_user: Dict[str, str] = request.form
    if request.is_json:
        json_user = request.json
    user_info = list(
        filter(
            lambda value: value is not None and len(str(value)) > 1,
            [
                json_user.get("username"),
                json_user.get("password"),
                json_user.get("email"),
                json_user.get("phone"),
            ],
        )
    )
    success = False
    is_path_exist = path.exists(CSV_FILE_NAME)
    with open(CSV_FILE_NAME, "a", encoding="utf8", newline="") as out_file:
        writer = csv.writer(out_file)
        if not is_path_exist:
            writer.writerow(["username", "password", "email", "phone"])
        if len(user_info) == 4:
            writer.writerow(user_info)
            success = True
        else:
            success = False

    return jsonify(success=success)


if __name__ == "__main__":
    app.run("0.0.0.0", 8000, debug=True)
