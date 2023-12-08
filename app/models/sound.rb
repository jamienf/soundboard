class Sound < ApplicationRecord
  mount_uploader :audio, AudioUploader
end