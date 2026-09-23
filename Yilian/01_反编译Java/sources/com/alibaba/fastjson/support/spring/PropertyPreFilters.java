package com.alibaba.fastjson.support.spring;

/* loaded from: classes.dex */
public class PropertyPreFilters {
    public java.util.List<com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter> filters = new java.util.ArrayList();

    public class MySimplePropertyPreFilter extends com.alibaba.fastjson.serializer.SimplePropertyPreFilter {
        public MySimplePropertyPreFilter() {
            super(new java.lang.String[0]);
        }

        public MySimplePropertyPreFilter(java.lang.Class<?> cls, java.lang.String... strArr) {
            super(cls, strArr);
        }

        public MySimplePropertyPreFilter(java.lang.String... strArr) {
            super(strArr);
        }

        public com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter addExcludes(java.lang.String... strArr) {
            for (java.lang.String str : strArr) {
                getExcludes().add(str);
            }
            return this;
        }

        public com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter addIncludes(java.lang.String... strArr) {
            for (java.lang.String str : strArr) {
                getIncludes().add(str);
            }
            return this;
        }
    }

    public com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter addFilter() {
        com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter mySimplePropertyPreFilter = new com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter();
        this.filters.add(mySimplePropertyPreFilter);
        return mySimplePropertyPreFilter;
    }

    public com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter addFilter(java.lang.Class<?> cls, java.lang.String... strArr) {
        com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter mySimplePropertyPreFilter = new com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter(cls, strArr);
        this.filters.add(mySimplePropertyPreFilter);
        return mySimplePropertyPreFilter;
    }

    public com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter addFilter(java.lang.String... strArr) {
        com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter mySimplePropertyPreFilter = new com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter(strArr);
        this.filters.add(mySimplePropertyPreFilter);
        return mySimplePropertyPreFilter;
    }

    public java.util.List<com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter> getFilters() {
        return this.filters;
    }

    public void setFilters(java.util.List<com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter> list) {
        this.filters = list;
    }

    public com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter[] toFilters() {
        return (com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter[]) this.filters.toArray(new com.alibaba.fastjson.support.spring.PropertyPreFilters.MySimplePropertyPreFilter[0]);
    }
}
