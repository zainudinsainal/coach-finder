import mutations from './mutations.js'
import actions from './actions.js'
import getters from './getters.js'

export default {
  namespaced: true,
  state() {
    return {
      // userIsCoach: false, if sign in/up alternatives
      coaches: [],
      coach: {}
    }
  },
  mutations,
  actions,
  getters
}
