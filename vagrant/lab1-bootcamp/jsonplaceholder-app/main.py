import os
from dotenv import load_dotenv

from flask import Flask, render_template
from routes.index import routers

from models.create_tables import db

from flask_cors import CORS

load_dotenv()

app = Flask(__name__)
app.config['SECRET_KEY'] = os.getenv('SECRET_KEY')



app.config['SQLALCHEMY_DATABASE_URI'] = os.getenv('DATABASE_URI')
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = os.getenv('TRACK_MODIFICATIONS')
app.config['JSON_SORT_KEYS'] = os.getenv('JSON_SORT_KEYS')
db.init_app(app)
CORS(app, resources={r"/*": {"origins": os.getenv('ACCEPT_ORIGIN_IP')  }}) 



#Pour gerer les routes
app.register_blueprint(routers)



#Pour la page 404
@app.errorhandler(404)
def not_found(error):
    return render_template('pages/not_found.html'),404



if __name__=='__main__':
    # create_all_tables()
    with app.app_context():
        db.create_all()
        # pass
    app.run(host=os.getenv("IP"),debug=True,port=os.getenv("PORT"))