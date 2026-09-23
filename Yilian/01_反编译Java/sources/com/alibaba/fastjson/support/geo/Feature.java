package com.alibaba.fastjson.support.geo;

@com.alibaba.fastjson.annotation.JSONType(orders = {com.umeng.analytics.pro.c.y, "id", "bbox", "coordinates", "properties"}, typeName = "Feature")
/* loaded from: classes.dex */
public class Feature extends com.alibaba.fastjson.support.geo.Geometry {
    public com.alibaba.fastjson.support.geo.Geometry geometry;
    public java.lang.String id;
    public java.util.Map<java.lang.String, java.lang.String> properties;

    public Feature() {
        super("Feature");
        this.properties = new java.util.LinkedHashMap();
    }

    public com.alibaba.fastjson.support.geo.Geometry getGeometry() {
        return this.geometry;
    }

    public java.lang.String getId() {
        return this.id;
    }

    public java.util.Map<java.lang.String, java.lang.String> getProperties() {
        return this.properties;
    }

    public void setGeometry(com.alibaba.fastjson.support.geo.Geometry geometry) {
        this.geometry = geometry;
    }

    public void setId(java.lang.String str) {
        this.id = str;
    }

    public void setProperties(java.util.Map<java.lang.String, java.lang.String> map) {
        this.properties = map;
    }
}
