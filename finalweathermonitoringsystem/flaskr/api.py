import json
import time
from flask import (
    Blueprint, request, jsonify
)
from flaskr.auth import login_required
from flaskr.db import get_db

bp = Blueprint('api', __name__, url_prefix='/api')


# 정보
def verify_api_key(api_key):
    device = (
        get_db()
        .execute('SELECT id, user_id FROM device WHERE api_key = ?', (api_key,),)
        .fetchone()
    )
    return device


# 추가
@bp.route('/add', methods=("POST",))
def add():
    data = request.get_json()
    api_key = data['api_key']
    dust_ratio = data['dust_ratio']
    h_ratio = data['h_ratio']
    t_ratio = data['t_ratio']
    lux = data['lux']
    weather = data['weather']
    # api 검증
    device = verify_api_key(api_key)

    if device is None:
        return jsonify(result='error', message='API KEY error')

    device_id = device['id']
    user_id = device['user_id']

    now = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
    db = get_db()
    db.execute(
        'INSERT INTO monitoring (user_id, device_id, dust_ratio, h_ratio, t_ratio,lux,weather, created, updated) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)',
        (
            user_id, device_id,
            dust_ratio, h_ratio, t_ratio, lux , weather,
            now, now
        ),
    )
    db.commit()
    return jsonify(result='ok')
