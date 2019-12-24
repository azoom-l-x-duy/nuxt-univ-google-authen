<template>
  <div>
    <p>This is response from api : {{ welcomeText }}</p>
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
      url: `/users/Anynomous`,
      baseUrl: process.env.API_URL,
      headers: {
        'Access-Control-Allow-Origin': '*',
      }
    })
    this.welcomeText = response.data
  }
}
</script>
