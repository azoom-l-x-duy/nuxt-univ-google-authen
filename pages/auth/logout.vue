<template>
  <div></div>
</template>

<script>
export default {
  layout: 'empty',
  async mounted() {
    this.$auth.logout()
  }
}
</script>
