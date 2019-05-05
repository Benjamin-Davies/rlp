const request = path =>
  fetch('/api' + path)
    .then(res => res.json())
//    .then(data => (console.log(data), data));

const controller = id => ({
  next: async () => request(`/${id}/next`),
  prev: async () => request(`/${id}/prev`),
});

const live = controller('live');
const pre = controller('pre');
