create database order_management;

use order_management;

CREATE TABLE phieu_xuat (
    ma_so_phieu_xuat INT,
    ngay_xuat DATE,
    PRIMARY KEY (ma_so_phieu_xuat)
);

CREATE TABLE phieu_nhap (
    ma_so_phieu_nhap INT,
    ngay_nhap DATE,
    PRIMARY KEY (ma_so_phieu_nhap)
);

CREATE TABLE vat_tu (
    ma_vat_tu INT,
    ten_vat_tu VARCHAR(45),
    PRIMARY KEY (ma_vat_tu)
);

CREATE TABLE nha_cung_cap (
    ma_nha_cung_cap INT,
    ten_nha_cung_cap VARCHAR(45),
    dia_chi VARCHAR(100),
    PRIMARY KEY (ma_nha_cung_cap)
);

CREATE TABLE chi_tiet_nha_cung_cap (
    ma_nha_cung_cap INT,
    so_dien_thoai VARCHAR(20),
    PRIMARY KEY (ma_nha_cung_cap),
    FOREIGN KEY (ma_nha_cung_cap)
        REFERENCES nha_cung_cap (ma_nha_cung_cap)
);

CREATE TABLE don_dat_hang (
    ma_so_dat_hang INT,
    ngay_dat_hang DATE,
    ma_nha_cung_cap INT,
    PRIMARY KEY (ma_so_dat_hang),
    FOREIGN KEY (ma_nha_cung_cap)
        REFERENCES nha_cung_cap (ma_nha_cung_cap)
);

CREATE TABLE chi_tiet_phieu_xuat (
    ma_so_phieu_xuat INT,
    don_gia_xuat DOUBLE,
    so_luong_xuat INT,
    ma_vat_tu INT,
    PRIMARY KEY (ma_so_phieu_xuat , ma_vat_tu),
    FOREIGN KEY (ma_so_phieu_xuat)
        REFERENCES phieu_xuat (ma_so_phieu_xuat),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);
    
CREATE TABLE chi_tiet_phieu_nhap (
    ma_so_phieu_nhap INT,
    don_gia_nhap DOUBLE,
    so_luong_nhap INT,
    ma_vat_tu INT,
    PRIMARY KEY (ma_so_phieu_nhap , ma_vat_tu),
    FOREIGN KEY (ma_so_phieu_nhap)
        REFERENCES phieu_nhap (ma_so_phieu_nhap),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);

CREATE TABLE chi_tiet_don_dat_hang (
    ma_vat_tu INT,
    ma_so_dat_hang INT,
    PRIMARY KEY (ma_vat_tu , ma_so_dat_hang),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu),
    FOREIGN KEY (ma_so_dat_hang)
        REFERENCES don_dat_hang (ma_so_dat_hang)
);
