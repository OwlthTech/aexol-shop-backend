import { AdminUiPlugin as Base } from "@vendure/admin-ui-plugin";
import { customAdminUi } from '../../compile-admin-ui';
import path from "path";

// const IS_PROD = path.basename(__dirname) === 'dist';
const IS_PROD = true;

export const AdminUiPlugin = Base.init({
  route: "admin",
  port: 3002,
  adminUiConfig: {
    brand: "OwlthCommerce",
    hideVendureBranding: true,
    hideVersion: true,
    loginImageUrl: "http://localhost:3000/admin/assets/logo-login.webp",
  },
  app: customAdminUi({ recompile: !IS_PROD, devMode: !IS_PROD }),
  // app: {},
});
