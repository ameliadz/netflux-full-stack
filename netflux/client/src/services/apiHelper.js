import axios from 'axios';

const URL = "http://localhost:4000"

export const getSubscriptions = async () => {
  let resp = await axios.get(`${URL}/subscriptions`);
  const subscriptions = resp.data;
  return subscriptions;
}

export const getMovies = async (subscription_id) => {
  let resp = await axios.get(`${URL}/subscriptions/${subscription_id}/movies`);
  const movies = resp.data;
  return movies;
}
