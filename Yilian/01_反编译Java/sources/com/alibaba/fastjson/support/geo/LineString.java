package com.alibaba.fastjson.support.geo;

@com.alibaba.fastjson.annotation.JSONType(orders = {com.umeng.analytics.pro.c.y, "bbox", "coordinates"}, typeName = "LineString")
/* loaded from: classes.dex */
public class LineString extends com.alibaba.fastjson.support.geo.Geometry {
    public double[][] coordinates;

    public LineString() {
        super("LineString");
    }

    public double[][] getCoordinates() {
        return this.coordinates;
    }

    public void setCoordinates(double[][] dArr) {
        this.coordinates = dArr;
    }
}
