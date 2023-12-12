USE CHMPham;

-- Xóa dữ liệu các bảng cũ (Nếu có)
DELETE FROM DatHang_ChiTiet;
DELETE FROM DatHang;
DELETE FROM SanPham;
DELETE FROM TinhTrang;
DELETE FROM HangSanXuat;
DELETE FROM LoaiSanPham;
DELETE FROM NguoiDung;

-- Reset identity
DBCC CHECKIDENT('DatHang_ChiTiet', RESEED, 0);
DBCC CHECKIDENT('DatHang', RESEED, 0);
DBCC CHECKIDENT('SanPham', RESEED, 0);
DBCC CHECKIDENT('TinhTrang', RESEED, 0);
DBCC CHECKIDENT('HangSanXuat', RESEED, 0);
DBCC CHECKIDENT('LoaiSanPham', RESEED, 0);
DBCC CHECKIDENT('NguoiDung', RESEED, 0);

-- Thêm dữ liệu mới
INSERT INTO TinhTrang(MoTa) VALUES
(N'Đơn hàng mới'),
(N'Đã xác nhận'),
(N'Đang giao'),
(N'Đang chuyển hoàn'),
(N'Đã hủy bởi khách hàng'),
(N'Đã hủy bởi shop'),
(N'Đã chuyển hoàn'),
(N'Thành công');

SET IDENTITY_INSERT HangSanXuat ON
INSERT INTO HangSanXuat(ID, TenHangSanXuat) VALUES
(1, 'Gilaa'),
(2, 'Romand'),
(3, '3CE');
SET IDENTITY_INSERT HangSanXuat OFF

INSERT INTO NguoiDung(HoVaTen, DienThoai, DiaChi, TenDangNhap, MatKhau, Quyen) VALUES
(N'Lê Quang Long', '0123456888', 'Long Xuyên', 'admin', '$2a$11$XGOVk9m4HqzXBlwVvhKN/ur8FS/keV9QyuCwikTL67sL0gqNUupMa', 1),
(N'Nguyễn Trọng Lễ', '0123456999', 'Long Xuyên', 'user', '$2a$11$XGOVk9m4HqzXBlwVvhKN/ur8FS/keV9QyuCwikTL67sL0gqNUupMa', 0);

SET IDENTITY_INSERT LoaiSanPham ON
INSERT INTO LoaiSanPham(ID, TenLoai) VALUES
(1, N'Cushion'),
(2, N'Son'),
(3, N'Phấn mắt'),
(4, N'Mascara');
SET IDENTITY_INSERT LoaiSanPham OFF

INSERT INTO SanPham(LoaiSanPhamID, HangSanXuatID, TenSanPham, DonGia, SoLuong, HinhAnh) VALUES
(1, 1, N'Cushion thuần chay', 395000, 100, 'cushion-vegan-super-cover-spf50-pa.jpg'),
(1, 1, N'Cushion Long Wear DD', 345000, 100, 'cushion-phan-nuoc-gilaa-long-wear-dd-spf50-pa.jpg'),
(2, 1, N'Son Kem Lì Gilaa Long Wear Lip Cream', 199000, 100, 'son-long-wear-lip-cream-full-size.jpg'),
(2, 1, N'Son kem lì Gilaa long wear lip cream Rich Rosie Collection', 299000, 100, 'son-kem-li-gilaa-long-wear-lip-cream-rich-rosie-collection.jpg'),

(2, 2, N'Son bóng Glasting Water Gloss', 179000, 100, 'son-glasting-water-gloss.jpg'),
(2, 2, N'Son Romand New Zero Velvet Tint', 176000, 100, 'son-romand-zero-velvet-tint.jpg'),
(2, 2, N'Son Dewyful Water Tint Muteral Nude Series', 210000, 100, 'son-dewyful-water-tint-muteral-nude-series.jpg'),
(2, 2, N'Juicy Lasting Tint Autumn Series', 34990000, 100, 'son-juicy-lasting-tint-autumn-series.jpg'),
(1, 2, N'Cushion Nu Zero', 250000, 100, 'cushion-nu-zero.jpg'),
(1, 2, N'Cushion Zero', 270000, 100, 'cushion-zero.jpg'),
(3, 2, N'Better Than Palette Secret Garden', 345000, 100, 'phan-mat-better-than-palette.jpg'),
(3, 2, N'Phấn mắt Better Than Palette Milk Grocery Series', 1590000, 100, 'phan-mat-better-than-palette-milk-grocery-series.jpg'),
(3, 2, N'Phấn mắt Better Than Palette Energetic Series', 300000, 100, 'phan-mat-better-than-palette-energetic.jpg'),
(4, 2, N'Mascara Han All Fix', 330000, 100, 'mascara-han-all-fix.jpg'),
(4, 2, N'Mascara Han All Brow Cara', 280000, 100, 'mascara-han-all-brow-cara.jpg'),

(2, 3, N'Son 3CE Velvet Lip Tint Like Gentle', 280000, 100, 'son-3ce-velvet-lip-tint-like-gentle.jpg'),
(2, 3, N'Son 3CE Soft Matte Lipstick Eternal Warm', 325000, 100, 'son-3ce-soft-matte-lipstick-eternal-warm.jpg'),
(2, 3, N'Son 3CE Soft Matte Lipstick Eternal Warm', 375000, 100, 'son-3ce-soft-matte-lipstick-speak-to-me.jpg'),
(2, 3, N'Son 3CE Velvet Lip Tint Private', 280000, 100, 'son-3ce-velvet-lip-tint-private.jpg'),
(2, 3, N'Son 3CE Mood Recipe Matte Lip Color', 325000, 100, 'son-3ce-mood-recipe-matte-lip-color.jpg'),
(3, 3, N'Phấn mắt 3CE Mini Multi Eye Color Palette Almond Fudge', 465000, 100, 'phan-mat-3ce-mini-multi-eye-color-palette-almond-fudge.jpg'),
(3, 3, N'Phấn mắt 3CE Mini Multi Eye Color Palette Delightful', 780000, 100, 'phan-mat-3ce-multi-eye-color-palette-delightful.jpg'),
(3, 3, N'Phấn mắt 3CE Mini Multi Eye Color Palette Dry Bouquet', 780000, 100, 'phan-mat-3ce-multi-eye-color-palette-dry-bouquet.jpg'),
(1, 3, N'Cushion 3CE Soft Matte Fit', 750000, 100, 'cushion-3ce-soft-matte-fit.jpg'),
(1, 3, N'Cushion 3CE Glow', 750000, 100, 'cushion-3ce-soft-matte-fit.jpg'),
(1, 3, N'Cushion 3CE Blare Cover SPF', 780000, 100, 'cushion-3ce-bare-cover-spf.jpg');