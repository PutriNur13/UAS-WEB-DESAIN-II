<template>
  <div>
    <v-subheader>Your Profile!</v-subheader>
    <v-card flat>
      <v-container>
        <v-simple-table>
          <tbody>
            <tr v-for="(value, key) in user" :key="key">
              <td>{{key}}</td>
              <td>{{value}}</td>
            </tr>
          </tbody>
        </v-simple-table>
        <v-spacer></v-spacer>
        <v-btn :to="'/edit-profile/' + user.id">Edit Profile</v-btn>
      </v-container>
    </v-card>
  </div>
</template>
<script>
import { mapGetters } from "vuex";
export default {
  computed: {
    ...mapGetters({
      user: "auth/user",
    }),
  },
};
</script>