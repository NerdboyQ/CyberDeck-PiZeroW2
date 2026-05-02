document.addEventListener('DOMContentLoaded', () => {
    //const vocal_stim_btn_0 = document.getElementById('stim-card-0');
    //const vocal_stim_btn_1 = document.getElementById('stim-card-1');
    //vocal_stim_btn_0.addEventListener('click', vocal_stim);
    //vocal_stim_btn_1.addEventListener('click', vocal_stim);
    document.querySelectorAll('[id^="stim-card-"]').forEach(card => {
        card.addEventListener('click', vocal_stim);
    });
});

async function vocal_stim(event){
    const card = event.target.closest('.cyber-card').id;
    const id = card.split('-').pop();
    console.log(card);
    console.log(id);
    try {
        const response = await fetch(`/vocal-stim/${id}`);
	const data = response.json();
	console.log(data);
    } catch (error) {
        console.log("Vocal Stim error:", error)
    }
}
