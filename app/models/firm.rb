class Firm < ApplicationRecord
  belongs_to :status, class_name: "FirmStatus", foreign_key: "status_id", optional: true
  def self.seed
    Firm.create(name: "Acme Corp", address: "123 Main St", city: "Metropolis", postal_code: "12345", state_abbrv: "CA", url: "https://www.acmecorp.com", phone: "555-1234", about: "A leading provider of business solutions.", status_id: FirmStatus.find_by(name: "Active").id)
    Firm.create(name: "Box Corp", address: "123 Campus St", city: "Los Angeles", postal_code: "90210", state_abbrv: "CA", url: "https://www.acmecorp.com", phone: "555-1234", about: "A leading provider of business solutions.", status_id: FirmStatus.find_by(name: "Inactive").id)
    Firm.create(name: "Chocolate Corp", address: "123 Campus St", city: "", postal_code: "90210", state_abbrv: "CA", url: "https://www.acmecorp.com", phone: "555-1234", about: "A leading provider of business solutions.", status_id: FirmStatus.find_by(name: "Inactive").id)
  end
end
