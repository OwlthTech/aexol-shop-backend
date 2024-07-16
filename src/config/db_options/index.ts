import { VendureConfig } from "@vendure/core";
import path from "path";
import { getEnvs } from "../../getEnvs";

const { DB_NAME, DB_HOST, DB_PORT, DB_USERNAME } =
  getEnvs();

export const dbConnectionOptions: VendureConfig["dbConnectionOptions"] = {
  type: "mysql",
  // See the README.md "Migrations" section for an explanation of
  // the `synchronize` and `migrations` options.
  synchronize: true,
  migrations: [path.join(__dirname, "./migrations/*.+(js|ts)")],
  logging: false,
  database: DB_NAME,
  host: DB_HOST,
  port: Number(DB_PORT),
  username: DB_USERNAME,
  password: "",
  ssl: false,
};
