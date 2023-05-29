class PictureUploader < CarrierWave::Uploader::Base
      # Choose the storage backend where uploaded files will be stored
      storage :file

      # Set the directory where uploaded files will be stored
    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end

      # Define the allowed image formats
    def extension_whitelist
      %w[jpg jpeg gif png]
    end
end