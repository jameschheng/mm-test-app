class FirmStatus < Status
  def self.seed
    [ "Active", "Inactive", "Prospect" ].each do |status_name|
      find_or_create_by(name: status_name)
    end
  end
end
