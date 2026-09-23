package e.a.b.b.c;

/* loaded from: classes.dex */
public enum z implements e.a.b.f.k {
    TYPE_HEADER_ITEM(0, "header_item"),
    TYPE_STRING_ID_ITEM(1, "string_id_item"),
    TYPE_TYPE_ID_ITEM(2, "type_id_item"),
    TYPE_PROTO_ID_ITEM(3, "proto_id_item"),
    TYPE_FIELD_ID_ITEM(4, "field_id_item"),
    TYPE_METHOD_ID_ITEM(5, "method_id_item"),
    TYPE_CLASS_DEF_ITEM(6, "class_def_item"),
    TYPE_MAP_LIST(4096, "map_list"),
    TYPE_TYPE_LIST(4097, "type_list"),
    TYPE_ANNOTATION_SET_REF_LIST(4098, "annotation_set_ref_list"),
    TYPE_ANNOTATION_SET_ITEM(4099, "annotation_set_item"),
    TYPE_CLASS_DATA_ITEM(8192, "class_data_item"),
    TYPE_CODE_ITEM(8193, "code_item"),
    TYPE_STRING_DATA_ITEM(8194, "string_data_item"),
    TYPE_DEBUG_INFO_ITEM(com.umeng.analytics.pro.n.a.r, "debug_info_item"),
    TYPE_ANNOTATION_ITEM(com.umeng.analytics.pro.n.a.s, "annotation_item"),
    TYPE_ENCODED_ARRAY_ITEM(com.umeng.analytics.pro.n.a.t, "encoded_array_item"),
    TYPE_ANNOTATIONS_DIRECTORY_ITEM(8198, "annotations_directory_item"),
    TYPE_MAP_ITEM(-1, "map_item"),
    TYPE_TYPE_ITEM(-1, "type_item"),
    TYPE_EXCEPTION_HANDLER_ITEM(-1, "exception_handler_item"),
    TYPE_ANNOTATION_SET_REF_ITEM(-1, "annotation_set_ref_item");

    public final int a;
    public final java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.String f2460c;

    z(int i, java.lang.String str) {
        this.a = i;
        this.b = str;
        this.f2460c = (str.endsWith("_item") ? str.substring(0, str.length() - 5) : str).replace('_', com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        return this.f2460c;
    }
}
