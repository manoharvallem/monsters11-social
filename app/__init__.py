from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager

app = Flask(__name__)
app.config['SECRET_KEY'] = 'your_secret_key'
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///monsters11.db'

db = SQLAlchemy(app)
login_manager = LoginManager()
login_manager.init_app(app)

from app import routes

from app.models import User

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))
