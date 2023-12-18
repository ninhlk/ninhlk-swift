import UIKit

//Bài 1:
var myInfo: [String: Any] = [
    "Name": "Le Ninh",
    "Email": "ninhdtvt@gmail.com",
    "Adress": "Kim Giang, Đại Kim, Hoàng Mai, HN",
    "Learned": "Pascal, C++"
]
//Thêm phần tử
myInfo["Age"] = 35
//Sửa 1 phần tử
myInfo.updateValue("Pascal, C++, Swift", forKey: "Learned")
myInfo["Name"] = "Le Khanh Ninh"
//Duyệt dictionary và in các phần tử
for (key, value) in myInfo {
    print("\(key): \(value)")
}

//Bài 2:
var customers = [
[
"id": "6868",
"name": "Nguyen Van Anh",
"age": "15",
"sdt": "30304040404"
],
[
"id": "7575",
"name": "Nguyen Van Nam",
"age": "36",
"sdt": "01234343545"
],
[
"id": "32",
"name": "Duong Hoang Yen",
"age": "44",
"sdt": "908989484484"
]
]
for customer in customers {
    if customer["id"] == "32" {
        print("User ID = 32 có tên là \(customer["name"] ?? ""), sdt là \(customer["sdt"] ?? "")")
    }
}
