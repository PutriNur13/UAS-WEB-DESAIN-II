<template>
  <div>
    <v-subheader>History Belanja</v-subheader>
    <v-card flat>
      <v-container>
        <v-simple-table>
          <tbody>
            <tr v-for="item in items" :key="item.id">
              <td>
                <br />
                Invoice: {{ item.invoice_number }}
                <div class="primary--text title">
                  Rp. {{ item.total_price.toLocaleString("id-ID") }}
                </div>
                <small
                  >date: {{ item.updated_at }}. <br />courier:
                  {{ item.courier_service }}. <br />status:
                  {{ item.status }}</small
                ><br /><br />
              </td>
              <td>
                <v-btn
                  color="success"
                  :to="'/order-detail/' + item.invoice_number"
                  >Details</v-btn
                >
              </td>
            </tr>
          </tbody>
        </v-simple-table>
      </v-container>
    </v-card>
  </div>
</template>

<script>
import { mapGetters, mapActions } from "vuex";
export default {
  data() {
    return {
      items: [],
    };
  },
  computed: {
    ...mapGetters({
      user: "auth/user",
    }),
  },
  methods: {
    ...mapActions({
      setAlert: "alert/set",
    }),
    orderDetail() {
      let formData = new FormData();
      formData.set("invoice", 20200811155748);
      let config = {
        headers: {
          Authorization: "Bearer " + this.user.api_token,
        },
      };
      this.axios.post("/order-detail", formData, config).then((response) => {
        console.log(response);
      });
    },
  },
  mounted() {
    let config = {
      headers: {
        'Authorization': 'Bearer ' + this.user.api_token,
      },
    };
    this.axios
      .get("/my-order", config)
      .then((response) => {
        let { data } = response.data;
        this.items = data;
      })
      .catch((error) => {
        let { data } = error.response;
        this.setAlert({
          status: true,
          text: data.message,
          color: "error",
        });
      });
  },
};
</script>
