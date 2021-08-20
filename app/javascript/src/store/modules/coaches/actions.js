import axios from 'axios';

export default {
  registerCoach(context, data) {
    const coachData = {
      id: context.rootGetters.userId,
      firstName: data.first,
      lastName: data.last,
      description: data.desc,
      hourlyRate: data.rate,
      areas: data.areas
    }
    context.commit('registerCoach', coachData)
  },
  async loadCoaches({ commit }) {
    try {
      const res = await axios.get('/api/coaches.json');
      commit('setCoaches', res.data);
    } catch (error) {
      console.log(error);
    }
  },
  async loadCoach({ commit }, id) {
    try {
      const res = await axios.get(`/api/coaches/${id}.json`)
      commit('setCoach', res.data);
    } catch (error) {
      console.log(error);
    }
  }
};
