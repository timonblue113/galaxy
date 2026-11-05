-- CHỈ cần chạy 1 lần nếu DB đã có sẵn dữ liệu cũ. (Worker mới cũng tự thêm các cột này, chạy file này là tuỳ chọn.)
-- npx wrangler d1 execute atimis --remote --file=migrate.sql
ALTER TABLE trips ADD COLUMN outcome TEXT;
ALTER TABLE trips ADD COLUMN end_at INTEGER;
ALTER TABLE seats ADD COLUMN fate TEXT;
ALTER TABLE seats ADD COLUMN loc TEXT;
ALTER TABLE seats ADD COLUMN rescued_by TEXT;
ALTER TABLE seats ADD COLUMN rescued_at INTEGER;
ALTER TABLE seats ADD COLUMN used INTEGER;
