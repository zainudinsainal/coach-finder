export default {
  registerCoach(state, payload) {
    state.coaches.push(payload);
  },
  setCoaches(state, data) {
    state.coaches = data.coaches;
  },
  setCoach(state, data) {
    state.coach = data.coach;
  }
};
