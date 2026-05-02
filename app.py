from flask import Flask, render_template
import os
import pygame

app = Flask(__name__)

# initialize mixer for sound
pygame.mixer.init()

# using this for absolute path for vocal stims
cwd = os.getcwd()
sounds = [
        pygame.mixer.Sound(os.path.join(cwd, "static/sounds/40_Year_Old_Virgin.wav")),
        pygame.mixer.Sound(os.path.join(cwd,"static/sounds/Ooowee_Mr._Poopybutthole.wav")),
        pygame.mixer.Sound(os.path.join(cwd,"static/sounds/RespeckToDaLaw.wav")),
        ]

@app.route('/')
def home():
    return render_template('html/window.html')

@app.route('/vocal-stim/<stim>')
def play_vocal_stim(stim: str):
    stim = int(stim)
    print(f"attempting stim: {stim}")
    if stim > -1 and stim < len(sounds):
        sounds[stim].play()
        return {"status": "ok", "sound": stim}

    return {"status":"error", "sound" : "stim"}, 404

if __name__ == '__main__':
    app.run(host="0.0.0.0", debug=True)
