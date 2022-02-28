from time import process_time_ns


addresses = ["Thumbs   .db.address_80000204", "Thumbs   .db.address_80000208", "Thumbs   .db.address_8000020E", "Thumbs   .db.address_80000210", "Thumbs   .db.address_80000211", "Thumbs   .db.address_80000240", "Thumbs   .db.address_80000244", "Thumbs   .db.address_80000253", "Thumbs   .db.address_80000256", "Thumbs   .db.address_80000258", "Thumbs   .db.address_80000260", "Thumbs   .db.address_80000268", "Thumbs   .db.address_80000269", "Thumbs   .db.address_8000026B", "Thumbs   .db.address_80000277", "Thumbs   .db.address_80000285", "Thumbs   .db.address_8000029A", "Thumbs   .db.address_800002CC"]
for i in addresses:
    ordinal = str(int(i[-3:], 16))
    print("Thumbs   .Ordinal#" + ordinal)