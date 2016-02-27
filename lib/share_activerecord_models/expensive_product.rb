module ShareActiveRecordModels
  class ExpensiveProduct < Base
    def self.refresh
      connection.execute("REFRESH MATERIALIZED VIEW CONCURRENTLY #{table_name}")
    end

    private

    def readonly?
      true
    end
  end
end

