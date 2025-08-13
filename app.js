(function () {
  const statusEl = document.getElementById('status');

  // Get current time in a nicer format
  const now = new Date();
  const formattedTime = now.toLocaleString(undefined, {
    year: 'numeric',
    month: 'short',
    day: 'numeric',
    hour: '2-digit',
    minute: '2-digit',
    second: '2-digit'
  });

  // Update status message
  statusEl.textContent = `✅ Build & Deploy successful at ${formattedTime}`;
  statusEl.style.color = '#2e7d32'; // AWS green success color
})();
