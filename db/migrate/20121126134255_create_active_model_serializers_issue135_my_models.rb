class CreateActiveModelSerializersIssue135MyModels < ActiveRecord::Migration
  def change
    create_table :active_model_serializers_issue135_my_models do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
