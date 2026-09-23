package com.huawei.hms.ml.scan;

/* loaded from: classes.dex */
public class HmsScan extends com.huawei.hms.ml.scan.HmsScanBase {
    public com.huawei.hms.ml.scan.HmsScan.BookMarkInfo bookMarkInfo;
    public com.huawei.hms.ml.scan.HmsScan.ContactDetail contactDetail;
    public com.huawei.hms.ml.scan.HmsScan.DriverInfo driverInfo;
    public com.huawei.hms.ml.scan.HmsScan.EmailContent emailContent;
    public com.huawei.hms.ml.scan.HmsScan.EventInfo eventInfo;
    public com.huawei.hms.ml.scan.HmsScan.LinkUrl linkUrl;
    public com.huawei.hms.ml.scan.HmsScan.LocationCoordinate locationCoordinate;
    public com.huawei.hms.ml.scan.HmsScan.SmsContent smsContent;
    public com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber telPhoneNumber;
    public com.huawei.hms.ml.scan.HmsScan.VehicleInfo vehicleInfo;
    public com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo wifiConnectionInfo;
    public static final int ARTICLE_NUMBER_FORM = com.huawei.hms.ml.scan.HmsScan.SCAN_TYPE_FORMAT.ARTICLE_NUMBER_FORM.getScanType();
    public static final int PURE_TEXT_FORM = com.huawei.hms.ml.scan.HmsScan.SCAN_TYPE_FORMAT.PURE_TEXT_FORM.getScanType();
    public static final int ISBN_NUMBER_FORM = com.huawei.hms.ml.scan.HmsScan.SCAN_TYPE_FORMAT.ISBN_NUMBER_FORM.getScanType();
    public static final int EVENT_INFO_FORM = com.huawei.hms.ml.scan.HmsScan.SCAN_TYPE_FORMAT.EVENT_INFO_FORM.getScanType();
    public static final int CONTACT_DETAIL_FORM = com.huawei.hms.ml.scan.HmsScan.SCAN_TYPE_FORMAT.CONTACT_DETAIL_FORM.getScanType();
    public static final int BOOK_MARK_FORM = com.huawei.hms.ml.scan.HmsScan.SCAN_TYPE_FORMAT.BOOK_MARK_FORM.getScanType();
    public static final int DRIVER_INFO_FORM = com.huawei.hms.ml.scan.HmsScan.SCAN_TYPE_FORMAT.DRIVER_INFO_FORM.getScanType();
    public static final int EMAIL_CONTENT_FORM = com.huawei.hms.ml.scan.HmsScan.SCAN_TYPE_FORMAT.EMAIL_CONTENT_FORM.getScanType();
    public static final int LOCATION_COORDINATE_FORM = com.huawei.hms.ml.scan.HmsScan.SCAN_TYPE_FORMAT.LOCATION_COORDINATE_FORM.getScanType();
    public static final int TEL_PHONE_NUMBER_FORM = com.huawei.hms.ml.scan.HmsScan.SCAN_TYPE_FORMAT.TEL_PHONE_NUMBER_FORM.getScanType();
    public static final int SMS_FORM = com.huawei.hms.ml.scan.HmsScan.SCAN_TYPE_FORMAT.SMS_FORM.getScanType();
    public static final int URL_FORM = com.huawei.hms.ml.scan.HmsScan.SCAN_TYPE_FORMAT.URL_FORM.getScanType();
    public static final int WIFI_CONNECT_INFO_FORM = com.huawei.hms.ml.scan.HmsScan.SCAN_TYPE_FORMAT.WIFI_CONNECT_INFO_FORM.getScanType();
    public static final android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan>() { // from class: com.huawei.hms.ml.scan.HmsScan.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.huawei.hms.ml.scan.HmsScan createFromParcel(android.os.Parcel parcel) {
            return new com.huawei.hms.ml.scan.HmsScan(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.huawei.hms.ml.scan.HmsScan[] newArray(int i) {
            return new com.huawei.hms.ml.scan.HmsScan[i];
        }
    };
    public static final int VEHICLEINFO_FORM = com.huawei.hms.ml.scan.HmsScan.SCAN_TYPE_FORMAT.VEHICLEINFO_FORM.getScanType();

    public static class AddressInfo implements android.os.Parcelable {
        public java.lang.String[] addressDetails;
        public int addressType;
        public static final int OTHER_USE_TYPE = com.huawei.hms.ml.scan.HmsScan.AddressInfo.ADDRESS_TYPE.OTHER_USE_TYPE.getAddressType();
        public static final int OFFICE_TYPE = com.huawei.hms.ml.scan.HmsScan.AddressInfo.ADDRESS_TYPE.OFFICE_TYPE.getAddressType();
        public static final int RESIDENTIAL_USE_TYPE = com.huawei.hms.ml.scan.HmsScan.AddressInfo.ADDRESS_TYPE.RESIDENTIAL_USE_TYPE.getAddressType();
        public static final android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.AddressInfo> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.AddressInfo>() { // from class: com.huawei.hms.ml.scan.HmsScan.AddressInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.AddressInfo createFromParcel(android.os.Parcel parcel) {
                return new com.huawei.hms.ml.scan.HmsScan.AddressInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.AddressInfo[] newArray(int i) {
                return new com.huawei.hms.ml.scan.HmsScan.AddressInfo[i];
            }
        };

        public enum ADDRESS_TYPE {
            OTHER_USE_TYPE(-1),
            OFFICE_TYPE(1),
            RESIDENTIAL_USE_TYPE(0);

            public final int addressType;

            ADDRESS_TYPE(int i) {
                this.addressType = i;
            }

            public int getAddressType() {
                return this.addressType;
            }
        }

        public AddressInfo() {
        }

        public AddressInfo(android.os.Parcel parcel) {
            this.addressDetails = parcel.createStringArray();
            this.addressType = parcel.readInt();
        }

        public AddressInfo(java.lang.String[] strArr, int i) {
            this.addressDetails = strArr;
            this.addressType = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public java.lang.String[] getAddressDetails() {
            return this.addressDetails;
        }

        public int getAddressType() {
            return this.addressType;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeStringArray(this.addressDetails);
            parcel.writeInt(this.addressType);
        }
    }

    public static class BookMarkInfo implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.ContactDetail> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.ContactDetail>() { // from class: com.huawei.hms.ml.scan.HmsScan.BookMarkInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.ContactDetail createFromParcel(android.os.Parcel parcel) {
                return new com.huawei.hms.ml.scan.HmsScan.ContactDetail(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.ContactDetail[] newArray(int i) {
                return new com.huawei.hms.ml.scan.HmsScan.ContactDetail[i];
            }
        };
        public int bookNum;
        public java.lang.String bookPlaceInfo;
        public int bookType;
        public java.lang.String bookUri;

        public BookMarkInfo() {
        }

        public BookMarkInfo(int i, int i2, java.lang.String str) {
            this(i, i2, null, str);
        }

        public BookMarkInfo(int i, int i2, java.lang.String str, java.lang.String str2) {
            this.bookType = i;
            this.bookNum = i2;
            this.bookPlaceInfo = str;
            this.bookUri = str2;
        }

        public BookMarkInfo(android.os.Parcel parcel) {
            this.bookType = parcel.readInt();
            this.bookNum = parcel.readInt();
            this.bookPlaceInfo = parcel.readString();
            this.bookUri = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getBookNum() {
            return this.bookNum;
        }

        public java.lang.String getBookPlaceInfo() {
            return this.bookPlaceInfo;
        }

        public int getBookType() {
            return this.bookType;
        }

        public java.lang.String getBookUri() {
            return this.bookUri;
        }

        public void setBookNum(int i) {
            this.bookNum = i;
        }

        public void setBookPlaceInfo(java.lang.String str) {
            this.bookPlaceInfo = str;
        }

        public void setBookType(int i) {
            this.bookType = i;
        }

        public void setBookUri(java.lang.String str) {
            this.bookUri = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeInt(this.bookType);
            parcel.writeInt(this.bookNum);
            parcel.writeString(this.bookPlaceInfo);
            parcel.writeString(this.bookUri);
        }
    }

    public static class ContactDetail implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.ContactDetail> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.ContactDetail>() { // from class: com.huawei.hms.ml.scan.HmsScan.ContactDetail.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.ContactDetail createFromParcel(android.os.Parcel parcel) {
                return new com.huawei.hms.ml.scan.HmsScan.ContactDetail(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.ContactDetail[] newArray(int i) {
                return new com.huawei.hms.ml.scan.HmsScan.ContactDetail[i];
            }
        };
        public com.huawei.hms.ml.scan.HmsScan.AddressInfo[] addressesInfos;
        public java.lang.String company;
        public java.lang.String[] contactLinks;
        public com.huawei.hms.ml.scan.HmsScan.EmailContent[] eMailContents;
        public java.lang.String note;
        public com.huawei.hms.ml.scan.HmsScan.PeopleName peopleName;
        public com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[] telPhoneNumbers;
        public java.lang.String title;

        public ContactDetail() {
        }

        public ContactDetail(android.os.Parcel parcel) {
            this.addressesInfos = (com.huawei.hms.ml.scan.HmsScan.AddressInfo[]) parcel.createTypedArray(com.huawei.hms.ml.scan.HmsScan.AddressInfo.CREATOR);
            this.eMailContents = (com.huawei.hms.ml.scan.HmsScan.EmailContent[]) parcel.createTypedArray(com.huawei.hms.ml.scan.HmsScan.EmailContent.CREATOR);
            this.company = parcel.readString();
            this.telPhoneNumbers = (com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[]) parcel.createTypedArray(com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.CREATOR);
            this.title = parcel.readString();
            this.contactLinks = parcel.createStringArray();
            this.peopleName = (com.huawei.hms.ml.scan.HmsScan.PeopleName) parcel.readParcelable(com.huawei.hms.ml.scan.HmsScan.PeopleName.class.getClassLoader());
            this.note = parcel.readString();
        }

        public ContactDetail(com.huawei.hms.ml.scan.HmsScan.PeopleName peopleName, java.lang.String str, java.lang.String str2, com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[] telPhoneNumberArr, com.huawei.hms.ml.scan.HmsScan.EmailContent[] emailContentArr, com.huawei.hms.ml.scan.HmsScan.AddressInfo[] addressInfoArr, java.lang.String[] strArr, java.lang.String str3) {
            this.peopleName = peopleName;
            this.title = str;
            this.company = str2;
            this.telPhoneNumbers = telPhoneNumberArr;
            this.eMailContents = emailContentArr;
            this.addressesInfos = addressInfoArr;
            this.contactLinks = strArr;
            this.note = str3;
        }

        public ContactDetail(com.huawei.hms.ml.scan.HmsScan.PeopleName peopleName, com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[] telPhoneNumberArr, com.huawei.hms.ml.scan.HmsScan.EmailContent[] emailContentArr) {
            this(peopleName, null, null, telPhoneNumberArr, emailContentArr, null, null, null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public java.util.List<com.huawei.hms.ml.scan.HmsScan.AddressInfo> getAddressesInfos() {
            return new java.util.ArrayList(java.util.Arrays.asList(this.addressesInfos));
        }

        public java.lang.String getCompany() {
            return this.company;
        }

        public java.lang.String[] getContactLinks() {
            return this.contactLinks;
        }

        public java.util.List<com.huawei.hms.ml.scan.HmsScan.EmailContent> getEmailContents() {
            return new java.util.ArrayList(java.util.Arrays.asList(this.eMailContents));
        }

        public java.lang.String getNote() {
            return this.note;
        }

        public com.huawei.hms.ml.scan.HmsScan.PeopleName getPeopleName() {
            return this.peopleName;
        }

        public java.util.List<com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber> getTelPhoneNumbers() {
            return new java.util.ArrayList(java.util.Arrays.asList(this.telPhoneNumbers));
        }

        public java.lang.String getTitle() {
            return this.title;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeTypedArray(this.addressesInfos, i);
            parcel.writeTypedArray(this.eMailContents, i);
            parcel.writeString(this.company);
            parcel.writeTypedArray(this.telPhoneNumbers, i);
            parcel.writeString(this.title);
            parcel.writeStringArray(this.contactLinks);
            parcel.writeParcelable(this.peopleName, i);
            parcel.writeString(this.note);
        }
    }

    public static class DriverInfo implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.DriverInfo> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.DriverInfo>() { // from class: com.huawei.hms.ml.scan.HmsScan.DriverInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.DriverInfo createFromParcel(android.os.Parcel parcel) {
                return new com.huawei.hms.ml.scan.HmsScan.DriverInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.DriverInfo[] newArray(int i) {
                return new com.huawei.hms.ml.scan.HmsScan.DriverInfo[i];
            }
        };
        public java.lang.String avenue;
        public java.lang.String certificateNumber;
        public java.lang.String certificateType;
        public java.lang.String city;
        public java.lang.String countryOfIssue;
        public java.lang.String dateOfBirth;
        public java.lang.String dateOfExpire;
        public java.lang.String dateOfIssue;
        public java.lang.String eyeColor;
        public java.lang.String familyName;
        public java.lang.String givenName;
        public java.lang.String hairColor;
        public java.lang.String height;
        public java.lang.String middleName;
        public java.lang.String province;
        public java.lang.String sex;
        public java.lang.String weightRange;
        public java.lang.String zipCode;

        public DriverInfo() {
        }

        public DriverInfo(android.os.Parcel parcel) {
            this.city = parcel.readString();
            this.province = parcel.readString();
            this.avenue = parcel.readString();
            this.zipCode = parcel.readString();
            this.dateOfBirth = parcel.readString();
            this.certificateType = parcel.readString();
            this.dateOfExpire = parcel.readString();
            this.givenName = parcel.readString();
            this.sex = parcel.readString();
            this.dateOfIssue = parcel.readString();
            this.countryOfIssue = parcel.readString();
            this.familyName = parcel.readString();
            this.certificateNumber = parcel.readString();
            this.middleName = parcel.readString();
            this.eyeColor = parcel.readString();
            this.hairColor = parcel.readString();
            this.height = parcel.readString();
            this.weightRange = parcel.readString();
        }

        public DriverInfo(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5) {
            this(str, str2, str3, str4, str5, null, null, null, null, null, null, null, null, null, null, null, null, null);
        }

        public DriverInfo(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5, java.lang.String str6, java.lang.String str7, java.lang.String str8, java.lang.String str9, java.lang.String str10, java.lang.String str11, java.lang.String str12, java.lang.String str13, java.lang.String str14, java.lang.String str15, java.lang.String str16, java.lang.String str17, java.lang.String str18) {
            this.certificateType = str;
            this.givenName = str2;
            this.middleName = str3;
            this.familyName = str4;
            this.sex = str5;
            this.dateOfBirth = str6;
            this.avenue = str7;
            this.city = str8;
            this.province = str9;
            this.zipCode = str10;
            this.certificateNumber = str11;
            this.countryOfIssue = str12;
            this.dateOfIssue = str13;
            this.dateOfExpire = str14;
            this.eyeColor = str15;
            this.hairColor = str16;
            this.height = str17;
            this.weightRange = str18;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public java.lang.String getAvenue() {
            return this.avenue;
        }

        public java.lang.String getCertificateNumber() {
            return this.certificateNumber;
        }

        public java.lang.String getCertificateType() {
            return this.certificateType;
        }

        public java.lang.String getCity() {
            return this.city;
        }

        public java.lang.String getCountryOfIssue() {
            return this.countryOfIssue;
        }

        public java.lang.String getDateOfBirth() {
            return this.dateOfBirth;
        }

        public java.lang.String getDateOfExpire() {
            return this.dateOfExpire;
        }

        public java.lang.String getDateOfIssue() {
            return this.dateOfIssue;
        }

        public java.lang.String getEyeColor() {
            return this.eyeColor;
        }

        public java.lang.String getFamilyName() {
            return this.familyName;
        }

        public java.lang.String getGivenName() {
            return this.givenName;
        }

        public java.lang.String getHairColor() {
            return this.hairColor;
        }

        public java.lang.String getHeight() {
            return this.height;
        }

        public java.lang.String getMiddleName() {
            return this.middleName;
        }

        public java.lang.String getProvince() {
            return this.province;
        }

        public java.lang.String getSex() {
            return this.sex;
        }

        public java.lang.String getWeightRange() {
            return this.weightRange;
        }

        public java.lang.String getZipCode() {
            return this.zipCode;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeString(this.city);
            parcel.writeString(this.province);
            parcel.writeString(this.avenue);
            parcel.writeString(this.zipCode);
            parcel.writeString(this.dateOfBirth);
            parcel.writeString(this.certificateType);
            parcel.writeString(this.dateOfExpire);
            parcel.writeString(this.givenName);
            parcel.writeString(this.sex);
            parcel.writeString(this.dateOfIssue);
            parcel.writeString(this.countryOfIssue);
            parcel.writeString(this.familyName);
            parcel.writeString(this.certificateNumber);
            parcel.writeString(this.middleName);
            parcel.writeString(this.eyeColor);
            parcel.writeString(this.hairColor);
            parcel.writeString(this.height);
            parcel.writeString(this.weightRange);
        }
    }

    public static class EmailContent implements android.os.Parcelable {
        public java.lang.String addressInfo;
        public int addressType;
        public java.lang.String bodyInfo;
        public java.lang.String subjectInfo;
        public static final int OTHER_USE_TYPE = com.huawei.hms.ml.scan.HmsScan.EmailContent.EMAIL_TYPE.OTHER_USE_TYPE.getAddressType();
        public static final int OFFICE_USE_TYPE = com.huawei.hms.ml.scan.HmsScan.EmailContent.EMAIL_TYPE.OFFICE_USE_TYPE.getAddressType();
        public static final int RESIDENTIAL_USE_TYPE = com.huawei.hms.ml.scan.HmsScan.EmailContent.EMAIL_TYPE.RESIDENTIAL_USE_TYPE.getAddressType();
        public static final android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.EmailContent> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.EmailContent>() { // from class: com.huawei.hms.ml.scan.HmsScan.EmailContent.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.EmailContent createFromParcel(android.os.Parcel parcel) {
                return new com.huawei.hms.ml.scan.HmsScan.EmailContent(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.EmailContent[] newArray(int i) {
                return new com.huawei.hms.ml.scan.HmsScan.EmailContent[i];
            }
        };

        public enum EMAIL_TYPE {
            OTHER_USE_TYPE(-1),
            OFFICE_USE_TYPE(1),
            RESIDENTIAL_USE_TYPE(0);

            public final int addressType;

            EMAIL_TYPE(int i) {
                this.addressType = i;
            }

            public int getAddressType() {
                return this.addressType;
            }
        }

        public EmailContent() {
        }

        public EmailContent(android.os.Parcel parcel) {
            this.addressInfo = parcel.readString();
            this.bodyInfo = parcel.readString();
            this.subjectInfo = parcel.readString();
            this.addressType = parcel.readInt();
        }

        public EmailContent(java.lang.String str, java.lang.String str2, java.lang.String str3, int i) {
            this.addressInfo = str;
            this.subjectInfo = str2;
            this.bodyInfo = str3;
            this.addressType = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public java.lang.String getAddressInfo() {
            return this.addressInfo;
        }

        public int getAddressType() {
            return this.addressType;
        }

        public java.lang.String getBodyInfo() {
            return this.bodyInfo;
        }

        public java.lang.String getSubjectInfo() {
            return this.subjectInfo;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeString(this.addressInfo);
            parcel.writeString(this.bodyInfo);
            parcel.writeString(this.subjectInfo);
            parcel.writeInt(this.addressType);
        }
    }

    public static class EventInfo implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.EventInfo> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.EventInfo>() { // from class: com.huawei.hms.ml.scan.HmsScan.EventInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.EventInfo createFromParcel(android.os.Parcel parcel) {
                return new com.huawei.hms.ml.scan.HmsScan.EventInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.EventInfo[] newArray(int i) {
                return new com.huawei.hms.ml.scan.HmsScan.EventInfo[i];
            }
        };
        public java.lang.String abstractInfo;
        public com.huawei.hms.ml.scan.HmsScan.EventTime beginTime;
        public com.huawei.hms.ml.scan.HmsScan.EventTime closeTime;
        public java.lang.String condition;
        public java.lang.String placeInfo;
        public java.lang.String sponsor;
        public java.lang.String theme;

        public EventInfo() {
        }

        public EventInfo(android.os.Parcel parcel) {
            this.abstractInfo = parcel.readString();
            this.closeTime = (com.huawei.hms.ml.scan.HmsScan.EventTime) parcel.readParcelable(com.huawei.hms.ml.scan.HmsScan.EventTime.class.getClassLoader());
            this.placeInfo = parcel.readString();
            this.sponsor = parcel.readString();
            this.beginTime = (com.huawei.hms.ml.scan.HmsScan.EventTime) parcel.readParcelable(com.huawei.hms.ml.scan.HmsScan.EventTime.class.getClassLoader());
            this.condition = parcel.readString();
            this.theme = parcel.readString();
        }

        public EventInfo(java.lang.String str, com.huawei.hms.ml.scan.HmsScan.EventTime eventTime, com.huawei.hms.ml.scan.HmsScan.EventTime eventTime2, java.lang.String str2) {
            this(str, eventTime, eventTime2, str2, null, null, null);
        }

        public EventInfo(java.lang.String str, com.huawei.hms.ml.scan.HmsScan.EventTime eventTime, com.huawei.hms.ml.scan.HmsScan.EventTime eventTime2, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5) {
            this.theme = str;
            this.beginTime = eventTime;
            this.closeTime = eventTime2;
            this.placeInfo = str2;
            this.abstractInfo = str3;
            this.sponsor = str4;
            this.condition = str5;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public java.lang.String getAbstractInfo() {
            return this.abstractInfo;
        }

        public com.huawei.hms.ml.scan.HmsScan.EventTime getBeginTime() {
            return this.beginTime;
        }

        public com.huawei.hms.ml.scan.HmsScan.EventTime getCloseTime() {
            return this.closeTime;
        }

        public java.lang.String getCondition() {
            return this.condition;
        }

        public java.lang.String getPlaceInfo() {
            return this.placeInfo;
        }

        public java.lang.String getSponsor() {
            return this.sponsor;
        }

        public java.lang.String getTheme() {
            return this.theme;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeString(this.abstractInfo);
            parcel.writeParcelable(this.closeTime, i);
            parcel.writeString(this.placeInfo);
            parcel.writeString(this.sponsor);
            parcel.writeParcelable(this.beginTime, i);
            parcel.writeString(this.condition);
            parcel.writeString(this.theme);
        }
    }

    public static class EventTime implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.EventTime> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.EventTime>() { // from class: com.huawei.hms.ml.scan.HmsScan.EventTime.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.EventTime createFromParcel(android.os.Parcel parcel) {
                return new com.huawei.hms.ml.scan.HmsScan.EventTime(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.EventTime[] newArray(int i) {
                return new com.huawei.hms.ml.scan.HmsScan.EventTime[i];
            }
        };
        public int day;
        public int hours;
        public boolean isUTCTime;
        public int minutes;
        public int month;
        public java.lang.String originalValue;
        public int seconds;
        public int year;

        public EventTime() {
        }

        public EventTime(int i, int i2, int i3, int i4, int i5, int i6) {
            this(i, i2, i3, i4, i5, i6, true, null);
        }

        public EventTime(int i, int i2, int i3, int i4, int i5, int i6, boolean z, java.lang.String str) {
            this.year = i;
            this.month = i2;
            this.day = i3;
            this.hours = i4;
            this.minutes = i5;
            this.seconds = i6;
            this.isUTCTime = z;
            this.originalValue = str;
        }

        public EventTime(android.os.Parcel parcel) {
            this.day = parcel.readInt();
            this.hours = parcel.readInt();
            this.isUTCTime = parcel.readByte() != 0;
            this.minutes = parcel.readInt();
            this.month = parcel.readInt();
            this.originalValue = parcel.readString();
            this.seconds = parcel.readInt();
            this.year = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getDay() {
            return this.day;
        }

        public int getHours() {
            return this.hours;
        }

        public int getMinutes() {
            return this.minutes;
        }

        public int getMonth() {
            return this.month;
        }

        public java.lang.String getOriginalValue() {
            return this.originalValue;
        }

        public int getSeconds() {
            return this.seconds;
        }

        public int getYear() {
            return this.year;
        }

        public boolean isUTCTime() {
            return this.isUTCTime;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeInt(this.day);
            parcel.writeInt(this.hours);
            parcel.writeByte(this.isUTCTime ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.minutes);
            parcel.writeInt(this.month);
            parcel.writeString(this.originalValue);
            parcel.writeInt(this.seconds);
            parcel.writeInt(this.year);
        }
    }

    public static class LinkUrl implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.LinkUrl> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.LinkUrl>() { // from class: com.huawei.hms.ml.scan.HmsScan.LinkUrl.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.LinkUrl createFromParcel(android.os.Parcel parcel) {
                return new com.huawei.hms.ml.scan.HmsScan.LinkUrl(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.LinkUrl[] newArray(int i) {
                return new com.huawei.hms.ml.scan.HmsScan.LinkUrl[i];
            }
        };
        public java.lang.String linkvalue;
        public java.lang.String theme;

        public LinkUrl() {
        }

        public LinkUrl(android.os.Parcel parcel) {
            this.theme = parcel.readString();
            this.linkvalue = parcel.readString();
        }

        public LinkUrl(java.lang.String str, java.lang.String str2) {
            this.theme = str;
            this.linkvalue = str2;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public java.lang.String getLinkValue() {
            return this.linkvalue;
        }

        public java.lang.String getTheme() {
            return this.theme;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeString(this.theme);
            parcel.writeString(this.linkvalue);
        }
    }

    public static class LocationCoordinate implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.LocationCoordinate> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.LocationCoordinate>() { // from class: com.huawei.hms.ml.scan.HmsScan.LocationCoordinate.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.LocationCoordinate createFromParcel(android.os.Parcel parcel) {
                return new com.huawei.hms.ml.scan.HmsScan.LocationCoordinate(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.LocationCoordinate[] newArray(int i) {
                return new com.huawei.hms.ml.scan.HmsScan.LocationCoordinate[i];
            }
        };
        public double latitude;
        public double longitude;

        public LocationCoordinate() {
        }

        public LocationCoordinate(double d2, double d3) {
            this.latitude = d2;
            this.longitude = d3;
        }

        public LocationCoordinate(android.os.Parcel parcel) {
            this.latitude = parcel.readDouble();
            this.longitude = parcel.readDouble();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public double getLatitude() {
            return this.latitude;
        }

        public double getLongitude() {
            return this.longitude;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeDouble(this.latitude);
            parcel.writeDouble(this.longitude);
        }
    }

    public static class PeopleName implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.PeopleName> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.PeopleName>() { // from class: com.huawei.hms.ml.scan.HmsScan.PeopleName.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.PeopleName createFromParcel(android.os.Parcel parcel) {
                return new com.huawei.hms.ml.scan.HmsScan.PeopleName(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.PeopleName[] newArray(int i) {
                return new com.huawei.hms.ml.scan.HmsScan.PeopleName[i];
            }
        };
        public java.lang.String familyName;
        public java.lang.String fullName;
        public java.lang.String givenName;
        public java.lang.String middleName;
        public java.lang.String namePrefix;
        public java.lang.String nameSuffix;
        public java.lang.String spelling;

        public PeopleName() {
        }

        public PeopleName(android.os.Parcel parcel) {
            this.fullName = parcel.readString();
            this.spelling = parcel.readString();
            this.namePrefix = parcel.readString();
            this.givenName = parcel.readString();
            this.middleName = parcel.readString();
            this.familyName = parcel.readString();
            this.nameSuffix = parcel.readString();
        }

        public PeopleName(java.lang.String str, java.lang.String str2, java.lang.String str3) {
            this(str, null, null, str2, null, str3, null);
        }

        public PeopleName(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5, java.lang.String str6, java.lang.String str7) {
            this.fullName = str;
            this.spelling = str2;
            this.namePrefix = str3;
            this.givenName = str4;
            this.middleName = str5;
            this.familyName = str6;
            this.nameSuffix = str7;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public java.lang.String getFamilyName() {
            return this.familyName;
        }

        public java.lang.String getFullName() {
            return this.fullName;
        }

        public java.lang.String getGivenName() {
            return this.givenName;
        }

        public java.lang.String getMiddleName() {
            return this.middleName;
        }

        public java.lang.String getNamePrefix() {
            return this.namePrefix;
        }

        public java.lang.String getNameSuffix() {
            return this.nameSuffix;
        }

        public java.lang.String getSpelling() {
            return this.spelling;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeString(this.fullName);
            parcel.writeString(this.spelling);
            parcel.writeString(this.namePrefix);
            parcel.writeString(this.givenName);
            parcel.writeString(this.middleName);
            parcel.writeString(this.familyName);
            parcel.writeString(this.nameSuffix);
        }
    }

    public enum SCAN_TYPE_FORMAT {
        ARTICLE_NUMBER_FORM(1001),
        EMAIL_CONTENT_FORM(1002),
        TEL_PHONE_NUMBER_FORM(1003),
        PURE_TEXT_FORM(1004),
        SMS_FORM(1005),
        URL_FORM(1006),
        WIFI_CONNECT_INFO_FORM(1007),
        EVENT_INFO_FORM(1008),
        CONTACT_DETAIL_FORM(1009),
        DRIVER_INFO_FORM(1010),
        LOCATION_COORDINATE_FORM(1011),
        ISBN_NUMBER_FORM(1012),
        BOOK_MARK_FORM(1013),
        VEHICLEINFO_FORM(1014);

        public final int scanTypeFormat;

        SCAN_TYPE_FORMAT(int i) {
            this.scanTypeFormat = i;
        }

        public int getScanType() {
            return this.scanTypeFormat;
        }
    }

    public static class SmsContent implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.SmsContent> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.SmsContent>() { // from class: com.huawei.hms.ml.scan.HmsScan.SmsContent.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.SmsContent createFromParcel(android.os.Parcel parcel) {
                return new com.huawei.hms.ml.scan.HmsScan.SmsContent(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.SmsContent[] newArray(int i) {
                return new com.huawei.hms.ml.scan.HmsScan.SmsContent[i];
            }
        };
        public java.lang.String destPhoneNumber;
        public java.lang.String msgContent;

        public SmsContent() {
        }

        public SmsContent(android.os.Parcel parcel) {
            this.msgContent = parcel.readString();
            this.destPhoneNumber = parcel.readString();
        }

        public SmsContent(java.lang.String str, java.lang.String str2) {
            this.msgContent = str;
            this.destPhoneNumber = str2;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public java.lang.String getDestPhoneNumber() {
            return this.destPhoneNumber;
        }

        public java.lang.String getMsgContent() {
            return this.msgContent;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeString(this.msgContent);
            parcel.writeString(this.destPhoneNumber);
        }
    }

    public static class TelPhoneNumber implements android.os.Parcelable {
        public java.lang.String telPhoneNumber;
        public int useType;
        public static final int OTHER_USE_TYPE = com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.USE_TYPE.OTHER_USE_TYPE.getUseType();
        public static final int OFFICE_USE_TYPE = com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.USE_TYPE.OFFICE_USE_TYPE.getUseType();
        public static final int RESIDENTIAL_USE_TYPE = com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.USE_TYPE.RESIDENTIAL_USE_TYPE.getUseType();
        public static final int FAX_USE_TYPE = com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.USE_TYPE.FAX_USE_TYPE.getUseType();
        public static final int CELLPHONE_NUMBER_USE_TYPE = com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.USE_TYPE.CELLPHONE_NUMBER_USE_TYPE.getUseType();
        public static final android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber>() { // from class: com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber createFromParcel(android.os.Parcel parcel) {
                return new com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[] newArray(int i) {
                return new com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber[i];
            }
        };

        public enum USE_TYPE {
            OTHER_USE_TYPE(-1),
            RESIDENTIAL_USE_TYPE(1),
            FAX_USE_TYPE(0),
            CELLPHONE_NUMBER_USE_TYPE(2),
            OFFICE_USE_TYPE(3);

            public final int useType;

            USE_TYPE(int i) {
                this.useType = i;
            }

            public int getUseType() {
                return this.useType;
            }
        }

        public TelPhoneNumber() {
        }

        public TelPhoneNumber(int i, java.lang.String str) {
            this.useType = i;
            this.telPhoneNumber = str;
        }

        public TelPhoneNumber(android.os.Parcel parcel) {
            this.telPhoneNumber = parcel.readString();
            this.useType = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public java.lang.String getTelPhoneNumber() {
            return this.telPhoneNumber;
        }

        public int getUseType() {
            return this.useType;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeString(this.telPhoneNumber);
            parcel.writeInt(this.useType);
        }
    }

    public static class VehicleInfo implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.VehicleInfo> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.VehicleInfo>() { // from class: com.huawei.hms.ml.scan.HmsScan.VehicleInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.VehicleInfo createFromParcel(android.os.Parcel parcel) {
                return new com.huawei.hms.ml.scan.HmsScan.VehicleInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.VehicleInfo[] newArray(int i) {
                return new com.huawei.hms.ml.scan.HmsScan.VehicleInfo[i];
            }
        };
        public java.lang.String countryCode;
        public int modelYear;
        public java.lang.String plantCode;
        public java.lang.String sequentialNumber;
        public java.lang.String vehicleAttributes;
        public java.lang.String vehicleDescriptorSection;
        public java.lang.String vehicleIdentifierSection;
        public java.lang.String vin;
        public java.lang.String worldManufacturerID;

        public VehicleInfo() {
        }

        public VehicleInfo(android.os.Parcel parcel) {
            this.vin = parcel.readString();
            this.worldManufacturerID = parcel.readString();
            this.vehicleIdentifierSection = parcel.readString();
            this.vehicleDescriptorSection = parcel.readString();
            this.vehicleAttributes = parcel.readString();
            this.countryCode = parcel.readString();
            this.modelYear = parcel.readInt();
            this.plantCode = parcel.readString();
            this.sequentialNumber = parcel.readString();
        }

        public VehicleInfo(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, int i, java.lang.String str5, java.lang.String str6) {
            this(str, str2, str3, str4, null, null, i, str5, str6);
        }

        public VehicleInfo(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5, java.lang.String str6, int i, java.lang.String str7, java.lang.String str8) {
            this.vin = str;
            this.worldManufacturerID = str2;
            this.vehicleAttributes = str6;
            this.vehicleDescriptorSection = str3;
            this.vehicleIdentifierSection = str4;
            this.countryCode = str5;
            this.modelYear = i;
            this.plantCode = str7;
            this.sequentialNumber = str8;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public java.lang.String getCountryCode() {
            return this.countryCode;
        }

        public int getModelYear() {
            return this.modelYear;
        }

        public java.lang.String getPlantCode() {
            return this.plantCode;
        }

        public java.lang.String getSequentialNumber() {
            return this.sequentialNumber;
        }

        public java.lang.String getVehicleAttributes() {
            return this.vehicleAttributes;
        }

        public java.lang.String getVehicleDescriptorSection() {
            return this.vehicleDescriptorSection;
        }

        public java.lang.String getVehicleIdentifierSection() {
            return this.vehicleIdentifierSection;
        }

        public java.lang.String getVin() {
            return this.vin;
        }

        public java.lang.String getWorldManufacturerID() {
            return this.worldManufacturerID;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeString(this.vin);
            parcel.writeString(this.worldManufacturerID);
            parcel.writeString(this.vehicleDescriptorSection);
            parcel.writeString(this.vehicleIdentifierSection);
            parcel.writeString(this.countryCode);
            parcel.writeString(this.vehicleAttributes);
            parcel.writeInt(this.modelYear);
            parcel.writeString(this.plantCode);
            parcel.writeString(this.sequentialNumber);
        }
    }

    public static class WiFiConnectionInfo implements android.os.Parcelable {
        public int cipherMode;
        public java.lang.String password;
        public java.lang.String ssidNumber;
        public static final int NO_PASSWORD_MODE_TYPE = com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo.CIPHER_MODE.NO_PASSWORD_MODE_TYPE.getCipherMode();
        public static final int WEP_MODE_TYPE = com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo.CIPHER_MODE.WEP_MODE_TYPE.getCipherMode();
        public static final int WPA_MODE_TYPE = com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo.CIPHER_MODE.WPA_MODE_TYPE.getCipherMode();
        public static final int SAE_MODE_TYPE = com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo.CIPHER_MODE.SAE_MODE_TYPE.getCipherMode();
        public static final android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo> CREATOR = new android.os.Parcelable.Creator<com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo>() { // from class: com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo createFromParcel(android.os.Parcel parcel) {
                return new com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo[] newArray(int i) {
                return new com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo[i];
            }
        };

        public enum CIPHER_MODE {
            SAE_MODE_TYPE(3),
            WEP_MODE_TYPE(2),
            NO_PASSWORD_MODE_TYPE(0),
            WPA_MODE_TYPE(1);

            public final int cipherMode;

            CIPHER_MODE(int i) {
                this.cipherMode = i;
            }

            public int getCipherMode() {
                return this.cipherMode;
            }
        }

        public WiFiConnectionInfo() {
        }

        public WiFiConnectionInfo(android.os.Parcel parcel) {
            this.cipherMode = parcel.readInt();
            this.password = parcel.readString();
            this.ssidNumber = parcel.readString();
        }

        public WiFiConnectionInfo(java.lang.String str, java.lang.String str2, int i) {
            this.ssidNumber = str;
            this.password = str2;
            this.cipherMode = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getCipherMode() {
            return this.cipherMode;
        }

        public java.lang.String getPassword() {
            return this.password;
        }

        public java.lang.String getSsidNumber() {
            return this.ssidNumber;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeInt(this.cipherMode);
            parcel.writeString(this.password);
            parcel.writeString(this.ssidNumber);
        }
    }

    public HmsScan() {
    }

    public HmsScan(android.os.Parcel parcel) {
        super(parcel);
    }

    public HmsScan(java.lang.String str, int i, java.lang.String str2, int i2, byte[] bArr, android.graphics.Point[] pointArr, com.huawei.hms.ml.scan.HmsScanAnalyzerOptions hmsScanAnalyzerOptions) {
        super(str, i, str2, i2, bArr, pointArr, hmsScanAnalyzerOptions);
    }

    public HmsScan(java.lang.String str, int i, java.lang.String str2, int i2, byte[] bArr, android.graphics.Point[] pointArr, com.huawei.hms.ml.scan.HmsScanAnalyzerOptions hmsScanAnalyzerOptions, com.huawei.hms.scankit.F f2) {
        java.lang.String str3;
        super(str, i, str2, i2, bArr, pointArr, hmsScanAnalyzerOptions);
        if (f2 == null || f2.a() == null) {
            return;
        }
        if (i2 == ARTICLE_NUMBER_FORM) {
            str3 = "ARTICLE_NUMBER_FORM";
        } else {
            if (i2 == EMAIL_CONTENT_FORM) {
                this.emailContent = (com.huawei.hms.ml.scan.HmsScan.EmailContent) f2.a();
                return;
            }
            if (i2 == TEL_PHONE_NUMBER_FORM) {
                this.telPhoneNumber = (com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber) f2.a();
                return;
            }
            if (i2 == PURE_TEXT_FORM) {
                str3 = "PURE_TEXT_FORM";
            } else {
                if (i2 == SMS_FORM) {
                    this.smsContent = (com.huawei.hms.ml.scan.HmsScan.SmsContent) f2.a();
                    return;
                }
                if (i2 == URL_FORM) {
                    this.linkUrl = (com.huawei.hms.ml.scan.HmsScan.LinkUrl) f2.a();
                    return;
                }
                if (i2 == WIFI_CONNECT_INFO_FORM) {
                    this.wifiConnectionInfo = (com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo) f2.a();
                    return;
                }
                if (i2 == EVENT_INFO_FORM) {
                    this.eventInfo = (com.huawei.hms.ml.scan.HmsScan.EventInfo) f2.a();
                    return;
                }
                if (i2 == CONTACT_DETAIL_FORM) {
                    this.contactDetail = (com.huawei.hms.ml.scan.HmsScan.ContactDetail) f2.a();
                    return;
                }
                if (i2 == DRIVER_INFO_FORM) {
                    this.driverInfo = (com.huawei.hms.ml.scan.HmsScan.DriverInfo) f2.a();
                    return;
                }
                if (i2 == LOCATION_COORDINATE_FORM) {
                    this.locationCoordinate = (com.huawei.hms.ml.scan.HmsScan.LocationCoordinate) f2.a();
                    return;
                }
                if (i2 != ISBN_NUMBER_FORM) {
                    if (i2 == BOOK_MARK_FORM) {
                        this.bookMarkInfo = (com.huawei.hms.ml.scan.HmsScan.BookMarkInfo) f2.a();
                        return;
                    } else {
                        if (i2 == VEHICLEINFO_FORM) {
                            this.vehicleInfo = (com.huawei.hms.ml.scan.HmsScan.VehicleInfo) f2.a();
                            return;
                        }
                        return;
                    }
                }
                str3 = "ISBN_NUMBER_FORM";
            }
        }
        android.util.Log.i("Hms", str3);
    }

    @Override // com.huawei.hms.ml.scan.HmsScanBase, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.huawei.hms.ml.scan.HmsScanBase
    public void detailTrans(android.os.Parcel parcel) {
        java.lang.String str;
        int i = this.scanTypeForm;
        if (i == ARTICLE_NUMBER_FORM) {
            str = "ARTICLE_NUMBER_FORM";
        } else {
            if (i == EMAIL_CONTENT_FORM) {
                this.emailContent = (com.huawei.hms.ml.scan.HmsScan.EmailContent) parcel.readParcelable(com.huawei.hms.ml.scan.HmsScan.EmailContent.class.getClassLoader());
                return;
            }
            if (i == TEL_PHONE_NUMBER_FORM) {
                this.telPhoneNumber = (com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber) parcel.readParcelable(com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber.class.getClassLoader());
                return;
            }
            if (i != PURE_TEXT_FORM) {
                if (i == SMS_FORM) {
                    this.smsContent = (com.huawei.hms.ml.scan.HmsScan.SmsContent) parcel.readParcelable(com.huawei.hms.ml.scan.HmsScan.SmsContent.class.getClassLoader());
                    return;
                }
                if (i == URL_FORM) {
                    this.linkUrl = (com.huawei.hms.ml.scan.HmsScan.LinkUrl) parcel.readParcelable(com.huawei.hms.ml.scan.HmsScan.LinkUrl.class.getClassLoader());
                    return;
                }
                if (i == WIFI_CONNECT_INFO_FORM) {
                    this.wifiConnectionInfo = (com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo) parcel.readParcelable(com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo.class.getClassLoader());
                    return;
                }
                if (i == EVENT_INFO_FORM) {
                    this.eventInfo = (com.huawei.hms.ml.scan.HmsScan.EventInfo) parcel.readParcelable(com.huawei.hms.ml.scan.HmsScan.EventInfo.class.getClassLoader());
                    return;
                }
                if (i == CONTACT_DETAIL_FORM) {
                    this.contactDetail = (com.huawei.hms.ml.scan.HmsScan.ContactDetail) parcel.readParcelable(com.huawei.hms.ml.scan.HmsScan.ContactDetail.class.getClassLoader());
                    return;
                } else if (i == DRIVER_INFO_FORM) {
                    this.driverInfo = (com.huawei.hms.ml.scan.HmsScan.DriverInfo) parcel.readParcelable(com.huawei.hms.ml.scan.HmsScan.DriverInfo.class.getClassLoader());
                    return;
                } else {
                    if (i == LOCATION_COORDINATE_FORM) {
                        this.locationCoordinate = (com.huawei.hms.ml.scan.HmsScan.LocationCoordinate) parcel.readParcelable(com.huawei.hms.ml.scan.HmsScan.LocationCoordinate.class.getClassLoader());
                        return;
                    }
                    return;
                }
            }
            str = "PURE_TEXT_FORM";
        }
        android.util.Log.i("Hms", str);
    }

    @Override // com.huawei.hms.ml.scan.HmsScanBase
    public void detailTransOut(android.os.Parcel parcel, int i) {
        android.os.Parcelable parcelable;
        java.lang.String str;
        int i2 = this.scanTypeForm;
        if (i2 != ARTICLE_NUMBER_FORM) {
            if (i2 == EMAIL_CONTENT_FORM) {
                parcelable = this.emailContent;
            } else if (i2 == TEL_PHONE_NUMBER_FORM) {
                parcelable = this.telPhoneNumber;
            } else if (i2 == PURE_TEXT_FORM) {
                str = "PURE_TEXT_FORM";
            } else if (i2 == SMS_FORM) {
                parcelable = this.smsContent;
            } else if (i2 == URL_FORM) {
                parcelable = this.linkUrl;
            } else if (i2 == WIFI_CONNECT_INFO_FORM) {
                parcelable = this.wifiConnectionInfo;
            } else if (i2 == EVENT_INFO_FORM) {
                parcelable = this.eventInfo;
            } else if (i2 == CONTACT_DETAIL_FORM) {
                parcelable = this.contactDetail;
            } else if (i2 == DRIVER_INFO_FORM) {
                parcelable = this.driverInfo;
            } else if (i2 != LOCATION_COORDINATE_FORM) {
                return;
            } else {
                parcelable = this.locationCoordinate;
            }
            parcel.writeParcelable(parcelable, i);
            return;
        }
        str = "ARTICLE_NUMBER_FORM";
        android.util.Log.i("Hms", str);
    }

    public com.huawei.hms.ml.scan.HmsScan.BookMarkInfo getBookMarkInfo() {
        return this.bookMarkInfo;
    }

    public com.huawei.hms.ml.scan.HmsScan.ContactDetail getContactDetail() {
        return this.contactDetail;
    }

    public com.huawei.hms.ml.scan.HmsScan.DriverInfo getDriverInfo() {
        return this.driverInfo;
    }

    public com.huawei.hms.ml.scan.HmsScan.EmailContent getEmailContent() {
        return this.emailContent;
    }

    public com.huawei.hms.ml.scan.HmsScan.EventInfo getEventInfo() {
        return this.eventInfo;
    }

    public com.huawei.hms.ml.scan.HmsScan.LinkUrl getLinkUrl() {
        return this.linkUrl;
    }

    public com.huawei.hms.ml.scan.HmsScan.LocationCoordinate getLocationCoordinate() {
        return this.locationCoordinate;
    }

    public com.huawei.hms.ml.scan.HmsScan.SmsContent getSmsContent() {
        return this.smsContent;
    }

    public com.huawei.hms.ml.scan.HmsScan.TelPhoneNumber getTelPhoneNumber() {
        return this.telPhoneNumber;
    }

    public com.huawei.hms.ml.scan.HmsScan.VehicleInfo getVehicleInfo() {
        return this.vehicleInfo;
    }

    public com.huawei.hms.ml.scan.HmsScan.WiFiConnectionInfo getWiFiConnectionInfo() {
        return this.wifiConnectionInfo;
    }

    public com.huawei.hms.ml.scan.HmsScan setZoomValue(double d2) {
        this.zoomValue = d2;
        return this;
    }

    @Override // com.huawei.hms.ml.scan.HmsScanBase, android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
