require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'

## CarrierWaveの設定
CarrierWave.configure do |config|

  # public配下に作成されるcacheの場所を変更
  # config.root = Rails.root.join('tmp')
  config.cache_dir = "#{Rails.root}/tmp/uploads"

end
