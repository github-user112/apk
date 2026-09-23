package com.alibaba.fastjson.support.geo;

@com.alibaba.fastjson.annotation.JSONType(orders = {com.umeng.analytics.pro.c.y, "bbox", "coordinates"}, typeName = "MultiPolygon")
/* loaded from: classes.dex */
public class MultiPolygon extends com.alibaba.fastjson.support.geo.Geometry {
    public double[][][][] coordinates;

    public MultiPolygon() {
        super("MultiPolygon");
    }

    public double[][][][] getCoordinates() {
        return this.coordinates;
    }

    public void setCoordinates(double[][][][] dArr) {
        this.coordinates = dArr;
    }
}
