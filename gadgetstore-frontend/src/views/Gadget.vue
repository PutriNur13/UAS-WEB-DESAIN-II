<template>
  <div class="about">
    <v-container>
      <v-subheader class="title">{{ gadget.name }}</v-subheader>
      <v-img v-if="gadget.image" :src="getImage('/gadgets/' + gadget.image)" height="200px"></v-img>
      <v-subheader>Information</v-subheader>
      <table class="v-data-table">
        <tbody>
          <tr>
            <th class="text-xs-left">Price</th>
            <td v-if="gadget.price">Rp. {{ gadget.price.toLocaleString("id-ID") }}</td>
          </tr>
          <tr>
            <th class="text-xs-left">Weight</th>
            <td>{{ gadget.weight }} kg</td>
          </tr>
          <tr>
            <th class="text-xs-left">Views</th>
            <td>{{ gadget.views }}</td>
          </tr>
          <tr>
            <th class="text-xs-left">Stock</th>
            <td>{{ gadget.stock }}</td>
          </tr>
          <tr>
            <th class="text-xs-left">Categories</th>
            <td>
              <template
                v-for="category in gadget.categories"
                v-key="category.id"
              >{{ category.name }}</template>
            </td>
          </tr>
        </tbody>
      </table>
      <v-subheader>Description</v-subheader>
      <p class="body-2">{{ gadget.description }}</p>
      <div style="position:relative">
        <v-btn block color="success" @click="buy" :disabled="gadget.stock == 0">
          <v-icon>save_alt</v-icon>&nbsp; buy
        </v-btn>
      </div>
    </v-container>
  </div>
</template>

<script>
import { mapActions } from "vuex";
export default {
  data() {
    return {
      gadget: {},
    };
  },
  methods: {
    ...mapActions({
      addCart: "cart/add",
      setAlert: "alert/set",
    }),
    buy() {
      this.addCart(this.gadget);
      this.setAlert({
        status: true,
        text: "Added to cart",
        type: "success",
      });
    },
  },
  created() {
    let slug = this.$route.params.slug;
    this.axios
      .get("/gadgets/slug/" + slug)
      .then((response) => {
        let gadget = response.data.data;
        this.gadget = gadget;
      })
      .catch((error) => {
        let responses = error.response;
        console.log(responses);
      });
  },
};
</script>
