package com.alibaba.fastjson.support.geo;

@com.alibaba.fastjson.annotation.JSONType(orders = {com.umeng.analytics.pro.c.y, "bbox", "coordinates"}, typeName = "MultiLineString")
/* loaded from: classes.dex */
public class MultiLineString extends com.alibaba.fastjson.support.geo.Geometry {
    public double[][][] coordinates;

    public MultiLineString() {
        super("MultiLineString");
    }

    public double[][][] getCoordinates() {
        return this.coordinates;
    }

    public void setCoordinates(double[][][] dArr) {
        this.coordinates = dArr;
    }
}
