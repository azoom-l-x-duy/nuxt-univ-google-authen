<template>
  <div></div>
</template>

<script>
export default {
  layout: 'empty',
  auth: false,
  mounted() {
    this.$auth.$storage.setLocalStorage('redirect', this.$route.query.redirect)
    this.$auth.loginWith('google')
  }
}
</script>
