package com.alibaba.fastjson.support.geo;

@com.alibaba.fastjson.annotation.JSONType(orders = {com.umeng.analytics.pro.c.y, "bbox", "geometries"}, typeName = "GeometryCollection")
/* loaded from: classes.dex */
public class GeometryCollection extends com.alibaba.fastjson.support.geo.Geometry {
    public java.util.List<com.alibaba.fastjson.support.geo.Geometry> geometries;

    public GeometryCollection() {
        super("GeometryCollection");
        this.geometries = new java.util.ArrayList();
    }

    public java.util.List<com.alibaba.fastjson.support.geo.Geometry> getGeometries() {
        return this.geometries;
    }
}
