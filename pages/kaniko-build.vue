<template>
  <div>
    <p>{{ welcomeText }}</p>
  </div>
</template>

<script>
export default {
  middleware: 'auth',
  data: () => ({
    welcomeText: ''
  }),
  async mounted() {
    const response = await this.$axios({
      method: 'GET',
      url: `/ping`,
      baseUrl: process.env.API_URL,
      headers: {
        'Access-Control-Allow-Origin': '*',
        'Authorization': `${this.$auth.getToken('google')}`
      }
    })
    this.welcomeText = response.data
  }
}
</script>
