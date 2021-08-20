import axios from 'axios';

export default {
  async loadCoaches({ commit }) {
    const res = await axios.get('/api/coaches.json');
    commit('setCoaches', res.data);
  },
  async loadCoach({ commit }, id) {
    const res = await axios.get(`/api/coaches/${id}.json`);
    commit('setCoach', res.data);
  },
  async newCoach({ commit }) {
    const res = await axios.get('/api/coaches/new.json')
    commit('setCoach', res.data);
  },
  async createCoach({ commit }, data) {
    console.log(data)
    try {
      await axios.post('/api/coaches.json', { coach: data })
    } catch (error) {
      console.log(error.response.data);
    }
  }
};
