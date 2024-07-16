import { VendureConfig } from "@vendure/core";
import { getEnvs } from "../../getEnvs";
import 'dotenv/config';

const { SUPERADMIN_PASSWORD, SUPERADMIN_USERNAME, COOKIE_SECRET } = getEnvs();

const IS_DEV = process.env.APP_ENV === 'dev';

export const authOptions: VendureConfig["authOptions"] = {
  requireVerification: false,
  tokenMethod: ["bearer", "cookie"],
  superadminCredentials: {
    identifier: SUPERADMIN_USERNAME,
    password: SUPERADMIN_PASSWORD,
  },
  cookieOptions: {
    secret: COOKIE_SECRET,
    ...(IS_DEV ? {} : { domain: "localhost", sameSite: "lax" }),
  },
};
