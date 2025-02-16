import './style.css'
import confetti from 'canvas-confetti';

window.launchConfetti = () => {
    confetti({
        particleCount: 100,
        spread: 70,
        origin: { y: 0.6 }
      });
};