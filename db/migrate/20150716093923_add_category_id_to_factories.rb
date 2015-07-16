class AddCategoryIdToFactories < ActiveRecord::Migration
  def change
    add_column :factories, :category_id, :integer

    Factory.reset_column_information

    Factory.find_each do |factory|
      factory.update_attribute :category, Category.find_or_create_by(title: factory.subtitle)
    end
  end
end
