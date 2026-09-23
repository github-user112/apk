package com.tencent.tinker.anno;

@javax.annotation.processing.SupportedSourceVersion(javax.lang.model.SourceVersion.RELEASE_7)
/* loaded from: classes.dex */
public class AnnotationProcessor extends javax.annotation.processing.AbstractProcessor {
    public static final java.lang.String APPLICATION_TEMPLATE_PATH = "/TinkerAnnoApplication.tmpl";
    public static final java.lang.String SUFFIX = "$$DefaultLifeCycle";

    private void processDefaultLifeCycle(java.util.Set<? extends javax.lang.model.element.Element> set) throws java.io.IOException {
        java.util.Iterator<? extends javax.lang.model.element.Element> it = set.iterator();
        while (it.hasNext()) {
            javax.lang.model.element.TypeElement typeElement = (javax.lang.model.element.Element) it.next();
            com.tencent.tinker.anno.DefaultLifeCycle defaultLifeCycle = (com.tencent.tinker.anno.DefaultLifeCycle) typeElement.getAnnotation(com.tencent.tinker.anno.DefaultLifeCycle.class);
            java.lang.String string = typeElement.getQualifiedName().toString();
            java.lang.String strSubstring = string.substring(0, string.lastIndexOf(46));
            java.lang.String strSubstring2 = string.substring(string.lastIndexOf(46) + 1);
            java.lang.String strApplication = defaultLifeCycle.application();
            if (strApplication.startsWith(".")) {
                strApplication = e.a.c.a.a.e(strSubstring, strApplication);
            }
            java.lang.String strSubstring3 = strApplication.substring(0, strApplication.lastIndexOf(46));
            java.lang.String strSubstring4 = strApplication.substring(strApplication.lastIndexOf(46) + 1);
            java.lang.String strLoaderClass = defaultLifeCycle.loaderClass();
            if (strLoaderClass.startsWith(".")) {
                strLoaderClass = e.a.c.a.a.e(strSubstring, strLoaderClass);
            }
            java.lang.String strReplaceAll = new java.util.Scanner(com.tencent.tinker.anno.AnnotationProcessor.class.getResourceAsStream(APPLICATION_TEMPLATE_PATH)).useDelimiter("\\A").next().replaceAll("%PACKAGE%", strSubstring3).replaceAll("%APPLICATION%", strSubstring4).replaceAll("%APPLICATION_LIFE_CYCLE%", strSubstring + "." + strSubstring2);
            java.lang.StringBuilder sbO = e.a.c.a.a.o("");
            sbO.append(defaultLifeCycle.flags());
            java.lang.String strReplaceAll2 = strReplaceAll.replaceAll("%TINKER_FLAGS%", sbO.toString()).replaceAll("%TINKER_LOADER_CLASS%", "" + strLoaderClass);
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("");
            sbO2.append(defaultLifeCycle.loadVerifyFlag());
            java.lang.String strReplaceAll3 = strReplaceAll2.replaceAll("%TINKER_LOAD_VERIFY_FLAG%", sbO2.toString());
            java.lang.StringBuilder sbO3 = e.a.c.a.a.o("");
            sbO3.append(defaultLifeCycle.useDelegateLastClassLoader());
            java.lang.String strReplaceAll4 = strReplaceAll3.replaceAll("%TINKER_USE_DLC%", sbO3.toString());
            java.lang.StringBuilder sbO4 = e.a.c.a.a.o("");
            sbO4.append(defaultLifeCycle.useInterpretModeOnSupported32BitSystem());
            java.lang.String strReplaceAll5 = strReplaceAll4.replaceAll("%TINKER_USE_INTERPRET_MODE_ON_SUPPORTED_32BIT_SYSTEM%", sbO4.toString());
            try {
                javax.tools.JavaFileObject javaFileObjectCreateSourceFile = this.processingEnv.getFiler().createSourceFile(strSubstring3 + "." + strSubstring4, new javax.lang.model.element.Element[0]);
                this.processingEnv.getMessager().printMessage(javax.tools.Diagnostic.Kind.NOTE, "Creating " + javaFileObjectCreateSourceFile.toUri());
                java.io.Writer writerOpenWriter = javaFileObjectCreateSourceFile.openWriter();
                try {
                    java.io.PrintWriter printWriter = new java.io.PrintWriter(writerOpenWriter);
                    printWriter.print(strReplaceAll5);
                    printWriter.flush();
                    writerOpenWriter.close();
                } catch (java.lang.Throwable th) {
                    writerOpenWriter.close();
                    throw th;
                }
            } catch (java.io.IOException e2) {
                this.processingEnv.getMessager().printMessage(javax.tools.Diagnostic.Kind.ERROR, e2.toString());
            }
        }
    }

    public java.util.Set<java.lang.String> getSupportedAnnotationTypes() {
        java.util.LinkedHashSet linkedHashSet = new java.util.LinkedHashSet();
        linkedHashSet.add(com.tencent.tinker.anno.DefaultLifeCycle.class.getName());
        return linkedHashSet;
    }

    public boolean process(java.util.Set<? extends javax.lang.model.element.TypeElement> set, javax.annotation.processing.RoundEnvironment roundEnvironment) throws java.io.IOException {
        processDefaultLifeCycle(roundEnvironment.getElementsAnnotatedWith(com.tencent.tinker.anno.DefaultLifeCycle.class));
        return true;
    }
}
