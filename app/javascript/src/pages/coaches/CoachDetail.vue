<template>
  <section>
    <base-card>
      <h2>{{ fullName }}</h2>
      <h3>${{ rate }}</h3>
    </base-card>
  </section>
  <section>
    <base-card>
      <header>
        <h2>Interested? Reach out now!</h2>
        <base-button link :to="contactLink">Contact</base-button>
      </header>
      <router-view></router-view>
    </base-card>
  </section>
  <section>
    <base-card>
      <base-badge
        v-for="area in selectedCoach.areas"
        :key="area"
        :type="area"
        :title="area">
      </base-badge>
      <p>{{ description }}</p>
    </base-card>
  </section>
</template>

<script>
export default {
  props: ['id'],
  computed: {
    selectedCoach() {
      return this.$store.getters['coaches/coach']
    },
    fullName() {
      return this.selectedCoach.first_name + ' ' + this.selectedCoach.last_name;
    },
    areas() {
      return this.selectedCoach.areas;
    },
    rate() {
      return this.selectedCoach.hourly_rate;
    },
    description() {
      return this.selectedCoach.description;
    },
    contactLink() {
      return this.$route.path + '/' + this.id + '/contact';
    }
  },
  created() {
    this.loadCoach();
  },
  methods: {
    loadCoach() {
      this.$store.dispatch('coaches/loadCoach', this.id);
    }
  }
}
</script>
