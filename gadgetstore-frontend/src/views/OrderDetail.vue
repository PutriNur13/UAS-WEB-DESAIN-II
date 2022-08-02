<template>
  <v-card>
    <v-toolbar dark color="success">
      <v-toolbar-title> Your Order Details ! </v-toolbar-title>
    </v-toolbar>
    <v-divider></v-divider>
    <v-container fluid>
      <v-list three-line>
        <template v-for="(item, index) in orderDetail">
          <v-list-item :key="'order' + index" :to="'/gadget/' + item.slug">
            <v-list-item-avatar>
              <v-img :src="getImage(item.cover)" contain></v-img>
            </v-list-item-avatar>

            <v-list-item-content>
              <v-list-item-title v-html="item.merk"></v-list-item-title>
              <v-list-item-subtitle>
                Rp. {{ item.price.toLocaleString("id-ID") }} ({{ item.weight }}
                kg)
                <span style="float:right"> x {{ item.quantity }} </span>
              </v-list-item-subtitle>
            </v-list-item-content>
          </v-list-item>
        </template>
      </v-list>
      <v-card>
        <v-card-text>
          <v-layout wrap>
            <v-flex pa-1>
              No. Invoice : {{ invoice }}<br />
              Total Price ({{ totalQuantity }} items) <br />
              <span class="title"> Rp. {{ totalPrice }} </span>
            </v-flex>
          </v-layout>
        </v-card-text>
      </v-card>
    </v-container>
  </v-card>
</template>

<script>
import { mapGetters } from "vuex";
export default {
  data() {
    return {
      orderDetail: {},
      totalPrice: 0,
      invoice: "",
      totalQuantity: 0,
    };
  },
  computed: {
    ...mapGetters({
      user: "auth/user",
    }),
  },
  methods: {},
  mounted() {
    let invoice = this.$route.params.invoice;
    this.invoice = invoice;
    let formData = new FormData();
    formData.set("invoice", invoice);
    let config = {
      headers: {
        Authorization: "Bearer " + this.user.api_token,
      },
    };
    this.axios
      .post("/order-detail", formData, config)
      .then((response) => {
        let orderDetail = response.data.data;
        this.orderDetail = orderDetail;
        this.totalPrice = orderDetail[0].total_price.toLocaleString("id-ID");
        orderDetail.forEach((item) => {
          this.totalQuantity += item.quantity;
        });
      })
      .catch((error) => {
        let responses = error.response;
        console.log(responses);
      });
  },
};
</script>
