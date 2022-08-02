<template>
  <div>
    <v-subheader>Edit Profile</v-subheader>
    <div>
      <v-card flat>
        <v-container>
          <v-form ref="form" lazy-validation>
            <v-text-field label="Name" v-model="name" required append-icon="person"></v-text-field>
            <v-text-field label="Email" v-model="email" required append-icon="person"></v-text-field>
            <v-textarea label="Address" v-model="address" required auto-grow rows="3"></v-textarea>
            <v-text-field label="Phone" v-model="phone" required append-icon="phone"></v-text-field>
          </v-form>
          <v-card-actions>
            <v-btn color="success" dark @click="editProfile">
              <v-icon>save</v-icon>&nbsp;
              Save
            </v-btn>
          </v-card-actions>
        </v-container>
      </v-card>
    </div>
  </div>
</template>
<script>
import { mapGetters, mapActions } from "vuex";
export default {
  data() {
    return {
      name: "",
      address: "",
      phone: "",
      email: "",
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
      setAuth: "auth/set",
    }),
    editProfile() {
      let formData = new FormData();
      formData.set("name", this.name);
      formData.set("email", this.email);
      formData.set("address", this.address);
      formData.set("phone", this.phone);
      let config = {
        headers: {
          Authorization: "Bearer " + this.user.api_token,
        },
      };
      this.axios
        .post("/edit-profile", formData, config)
        .then((response) => {
          this.setAuth(response.data.data);
          this.setAlert({
            status: true,
            text: response.data.message,
            type: "success",
          });
        })
        .catch((err) => {
          let responses = err.response;
          this.setAlert({
            status: true,
            text: responses.data.message,
            type: "error",
          });
        });
    },
  },
};
</script>
