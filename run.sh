#!/bin/bash
tmux new -s replay -d 'conda activate llt; python replay.py; read'
tmux new -s learner -d 'conda activate llt; REPLAY_IP="127.0.1.2" N_ACTORS=8 python learner.py --cuda; read'
tmux new -s actor0 -d 'conda activate llt; REPLAY_IP="127.0.1.2" LEARNER_IP="127.0.1.2" ACTOR_ID=0 N_ACTORS=8 python actor.py; read'
tmux new -s actor1 -d 'conda activate llt; REPLAY_IP="127.0.1.2" LEARNER_IP="127.0.1.2" ACTOR_ID=1 N_ACTORS=8 python actor.py; read'
tmux new -s actor2 -d 'conda activate llt; REPLAY_IP="127.0.1.2" LEARNER_IP="127.0.1.2" ACTOR_ID=2 N_ACTORS=8 python actor.py; read'
tmux new -s actor3 -d 'conda activate llt; REPLAY_IP="127.0.1.2" LEARNER_IP="127.0.1.2" ACTOR_ID=3 N_ACTORS=8 python actor.py; read'
tmux new -s actor8 -d 'conda activate llt; REPLAY_IP="127.0.1.2" LEARNER_IP="127.0.1.2" ACTOR_ID=4 N_ACTORS=8 python actor.py; read'
tmux new -s actor5 -d 'conda activate llt; REPLAY_IP="127.0.1.2" LEARNER_IP="127.0.1.2" ACTOR_ID=5 N_ACTORS=8 python actor.py; read'
tmux new -s actor6 -d 'conda activate llt; REPLAY_IP="127.0.1.2" LEARNER_IP="127.0.1.2" ACTOR_ID=6 N_ACTORS=8 python actor.py; read'
tmux new -s actor7 -d 'conda activate llt; REPLAY_IP="127.0.1.2" LEARNER_IP="127.0.1.2" ACTOR_ID=7 N_ACTORS=8 python actor.py; read'
tmux new -s evaluator -d 'conda activate llt; LEARNER_IP="127.0.1.2" python eval.py; read'````