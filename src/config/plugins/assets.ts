import { AssetServerPlugin } from '@vendure/asset-server-plugin';
import path from 'path';

export const AssetsPlugin = AssetServerPlugin.init({
  route: 'assets',
  assetUploadDir: path.join(__dirname, '../../../static/assets'),
});
