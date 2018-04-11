require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

# S3を使用しているかを判定するためのメソッド。（ローカル環境ではS3を使わないため）
  if Rails.env.production?
  # public配下にキャッシュができると参照されてしまうので、予め変えておく。
    config.cache_dir = "#{Rails.root}/tmp/uploads"
  end
