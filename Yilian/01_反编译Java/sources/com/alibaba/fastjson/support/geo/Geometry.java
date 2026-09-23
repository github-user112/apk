package com.alibaba.fastjson.support.geo;

@com.alibaba.fastjson.annotation.JSONType(seeAlso = {com.alibaba.fastjson.support.geo.GeometryCollection.class, com.alibaba.fastjson.support.geo.LineString.class, com.alibaba.fastjson.support.geo.MultiLineString.class, com.alibaba.fastjson.support.geo.Point.class, com.alibaba.fastjson.support.geo.MultiPoint.class, com.alibaba.fastjson.support.geo.Polygon.class, com.alibaba.fastjson.support.geo.MultiPolygon.class, com.alibaba.fastjson.support.geo.Feature.class, com.alibaba.fastjson.support.geo.FeatureCollection.class}, typeKey = com.umeng.analytics.pro.c.y)
/* loaded from: classes.dex */
public abstract class Geometry {
    public double[] bbox;
    public final java.lang.String type;

    public Geometry(java.lang.String str) {
        this.type = str;
    }

    public double[] getBbox() {
        return this.bbox;
    }

    public java.lang.String getType() {
        return this.type;
    }

    public void setBbox(double[] dArr) {
        this.bbox = dArr;
    }
}
