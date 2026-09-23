package f.a.i.m;

/* loaded from: classes.dex */
public class f {
    public static final java.util.Map<android.os.Looper, android.os.HandlerThread> a = new java.util.concurrent.ConcurrentHashMap();

    public class a extends android.os.Handler {
        public final /* synthetic */ android.os.Looper a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(android.os.Looper looper, android.os.Looper looper2) {
            super(looper);
            this.a = looper2;
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) throws java.lang.NoSuchFieldException {
            java.lang.Thread thread = this.a.getThread();
            try {
                if (java.lang.Integer.parseInt(message.obj.toString().split(": ")[r1.length - 1]) == 135) {
                    e.e.a.g.a("waiting msg is DUMP_HEAP");
                    return;
                }
            } catch (java.lang.Exception e2) {
                e.e.a.g.a(e2);
            }
            e.e.a.g.c("########## handler runnable waiting ANR in: thread = " + thread + " ##########\n waiting msg is " + message.obj, new java.lang.Object[0]);
            f.a.i.m.f.b(this.a);
            f.a.i.m.f.d(thread);
            e.e.a.g.c("########## handler runnable waiting ANR end ##########", new java.lang.Object[0]);
        }
    }

    public static /* synthetic */ void a(android.os.Handler handler, long j, java.lang.String str) {
        handler.removeCallbacksAndMessages(null);
        if (str.contains(">>>>> ")) {
            handler.sendMessageDelayed(android.os.Message.obtain(handler, 1, str), j);
        }
    }

    public static void b(android.os.Looper looper) throws java.lang.NoSuchFieldException {
        if (looper == null) {
            return;
        }
        try {
            java.lang.reflect.Field declaredField = looper.getClass().getDeclaredField("mQueue");
            declaredField.setAccessible(true);
            android.os.MessageQueue messageQueue = (android.os.MessageQueue) declaredField.get(looper);
            java.lang.reflect.Field declaredField2 = messageQueue.getClass().getDeclaredField("mMessages");
            declaredField2.setAccessible(true);
            android.os.Message message = (android.os.Message) declaredField2.get(messageQueue);
            e.e.a.g.c("-------------------printHandlerAllMsg thread = " + looper.getThread() + "-------------------\nmessage = " + message, new java.lang.Object[0]);
            if (message != null) {
                android.os.Message message2 = null;
                do {
                    if (message2 == null) {
                        message2 = message;
                    }
                    java.lang.reflect.Field declaredField3 = message2.getClass().getDeclaredField("next");
                    declaredField3.setAccessible(true);
                    message2 = (android.os.Message) declaredField3.get(message2);
                    e.e.a.g.c("next message = " + message2, new java.lang.Object[0]);
                } while (message2 != null);
            }
            e.e.a.g.c("-------------------printHandlerAllMsg thread = " + looper.getThread() + " end-------------------", new java.lang.Object[0]);
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("printHandlerAllMsg thread = ");
            sbO.append(looper.getThread());
            sbO.append(" Exception = ");
            sbO.append(e2.getMessage());
            e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
            e2.printStackTrace();
        }
    }

    public static void c() {
        d(java.lang.Thread.currentThread());
    }

    public static void d(java.lang.Thread thread) {
        java.lang.StackTraceElement[] stackTrace = thread.getStackTrace();
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("stack at: thread = ");
        sb.append(thread);
        sb.append("\n");
        for (int i = 0; i < stackTrace.length && i < 10; i++) {
            java.lang.StackTraceElement stackTraceElement = stackTrace[i];
            sb.append(stackTraceElement.getClassName());
            sb.append(".");
            sb.append(stackTraceElement.getMethodName());
            sb.append("(");
            sb.append(stackTraceElement.getFileName());
            sb.append(":");
            sb.append(stackTraceElement.getLineNumber());
            sb.append(")\n");
        }
        e.e.a.g.c(sb.toString(), new java.lang.Object[0]);
    }

    public static void e(android.os.Looper looper, final long j) {
        if (looper == null) {
            e.e.a.g.c("setLooperLogger looper is null, return", new java.lang.Object[0]);
            return;
        }
        if (a.get(looper) != null) {
            e.e.a.g.c("setLooperLogger looper exist, return", new java.lang.Object[0]);
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("setLooperLogger looper = ");
        sbO.append(looper.getThread());
        e.e.a.g.a(sbO.toString());
        android.os.HandlerThread handlerThread = new android.os.HandlerThread(looper.getThread() + " Printer Handler");
        a.put(looper, handlerThread);
        handlerThread.start();
        final f.a.i.m.f.a aVar = new f.a.i.m.f.a(handlerThread.getLooper(), looper);
        looper.setMessageLogging(new android.util.Printer() { // from class: f.a.i.m.a
            @Override // android.util.Printer
            public final void println(java.lang.String str) {
                f.a.i.m.f.a(aVar, j, str);
            }
        });
    }
}
