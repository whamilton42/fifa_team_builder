Sequel.migration do
  change do
    create_table(:players) do
      primary_key :name
      String :name, null: false
      Integer :rating, null: false
      String :position, null: false
    end
  end
end
