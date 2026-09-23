package com.alibaba.fastjson.support.geo;

@com.alibaba.fastjson.annotation.JSONType(orders = {com.umeng.analytics.pro.c.y, "bbox", "coordinates"}, typeName = "FeatureCollection")
/* loaded from: classes.dex */
public class FeatureCollection extends com.alibaba.fastjson.support.geo.Geometry {
    public java.util.List<com.alibaba.fastjson.support.geo.Feature> features;

    public FeatureCollection() {
        super("FeatureCollection");
        this.features = new java.util.ArrayList();
    }

    public java.util.List<com.alibaba.fastjson.support.geo.Feature> getFeatures() {
        return this.features;
    }
}
