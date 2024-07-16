import { compileUiExtensions, setBranding } from "@vendure/ui-devkit/compiler";
import path from "path";

console.log("COMPILE: IS_PROD===============================================================================================>", path.extname(__dirname));

if (require.main === module) {
  // Called directly from command line
  customAdminUi({ recompile: true, devMode: false })
    .compile?.()
    .then(() => {
      process.exit(0);
    });
}

export function customAdminUi(options: {
  recompile: boolean;
  devMode: boolean;
}) {
  const compiledAppPath = path.join(__dirname, "../admin-ui");
  if (options.recompile) {
    return compileUiExtensions({
      outputPath: compiledAppPath,
      extensions: [
        setBranding({
          // The small logo appears in the top left of the screen
          smallLogoPath: path.join(__dirname, "../images/square-logo.png"),
          // The large logo is used on the login page
          largeLogoPath: path.join(__dirname, "../images/sidebar-logo.png"),
          faviconPath: path.join(__dirname, "../images/favicon.ico"),
        }),
      ],
      devMode: options.devMode,
    });
  } else {
    return {
      path: path.join(compiledAppPath, "dist"),
    };
  }
}
