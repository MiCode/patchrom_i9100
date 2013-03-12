.class Landroid/opengl/GLExternalSurfaceView$EglHelper;
.super Ljava/lang/Object;
.source "GLExternalSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLExternalSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field final synthetic this$0:Landroid/opengl/GLExternalSurfaceView;


# direct methods
.method public constructor <init>(Landroid/opengl/GLExternalSurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 839
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 1036
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 1037
    return-void
.end method

.method private throwEglException(Ljava/lang/String;I)V
    .locals 5
    .parameter "function"
    .parameter "error"

    .prologue
    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, message:Ljava/lang/String;
    const-string v1, "EglHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throwEglException tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .locals 10
    .parameter "holder"

    .prologue
    const/4 v3, 0x0

    .line 894
    const-string v5, "EglHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSurface()  tid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v5, :cond_0

    .line 900
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "egl not initialized"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 902
    :cond_0
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v5, :cond_1

    .line 903
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "eglDisplay not initialized"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 905
    :cond_1
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v5, :cond_2

    .line 906
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mEglConfig not initialized"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 912
    :cond_2
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v5, v6, :cond_3

    .line 918
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 920
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v5}, Landroid/opengl/GLExternalSurfaceView;->access$500(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v5

    iget-object v6, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v5, v6, v7, v8}, Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 927
    :cond_3
    :try_start_0
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v5}, Landroid/opengl/GLExternalSurfaceView;->access$500(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v5

    iget-object v6, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v5, v6, v7, v8, p1}, Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v5

    iput-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v5, v6, :cond_8

    .line 937
    :cond_4
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    .line 938
    .local v2, error:I
    const/16 v5, 0x300b

    if-ne v2, v5, :cond_6

    .line 939
    const-string v5, "EglHelper"

    const-string v6, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    .end local v2           #error:I
    :cond_5
    :goto_0
    return-object v3

    .line 929
    :catch_0
    move-exception v1

    .line 932
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "EglHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Surface is not valid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 942
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #error:I
    :cond_6
    const/16 v5, 0x3003

    if-ne v2, v5, :cond_7

    .line 945
    const-string v5, "EglHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createWindowSurface returned EGL_BAD_ALLOC "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 948
    :cond_7
    const-string v5, "createWindowSurface"

    invoke-direct {p0, v5, v2}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 955
    .end local v2           #error:I
    :cond_8
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v8, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v9, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 956
    const-string v5, "eglMakeCurrent"

    invoke-direct {p0, v5}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 959
    :cond_9
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v5}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v3

    .line 960
    .local v3, gl:Ljavax/microedition/khronos/opengles/GL;
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mGLWrapper:Landroid/opengl/GLExternalSurfaceView$GLWrapper;
    invoke-static {v5}, Landroid/opengl/GLExternalSurfaceView;->access$600(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$GLWrapper;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 961
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mGLWrapper:Landroid/opengl/GLExternalSurfaceView$GLWrapper;
    invoke-static {v5}, Landroid/opengl/GLExternalSurfaceView;->access$600(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$GLWrapper;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/opengl/GLExternalSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v3

    .line 964
    :cond_a
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mDebugFlags:I
    invoke-static {v5}, Landroid/opengl/GLExternalSurfaceView;->access$700(Landroid/opengl/GLExternalSurfaceView;)I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    if-eqz v5, :cond_5

    .line 965
    const/4 v0, 0x0

    .line 966
    .local v0, configFlags:I
    const/4 v4, 0x0

    .line 967
    .local v4, log:Ljava/io/Writer;
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mDebugFlags:I
    invoke-static {v5}, Landroid/opengl/GLExternalSurfaceView;->access$700(Landroid/opengl/GLExternalSurfaceView;)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b

    .line 968
    or-int/lit8 v0, v0, 0x1

    .line 970
    :cond_b
    iget-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mDebugFlags:I
    invoke-static {v5}, Landroid/opengl/GLExternalSurfaceView;->access$700(Landroid/opengl/GLExternalSurfaceView;)I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_c

    .line 971
    new-instance v4, Landroid/opengl/GLExternalSurfaceView$LogWriter;

    .end local v4           #log:Ljava/io/Writer;
    invoke-direct {v4}, Landroid/opengl/GLExternalSurfaceView$LogWriter;-><init>()V

    .line 973
    .restart local v4       #log:Ljava/io/Writer;
    :cond_c
    invoke-static {v3, v0, v4}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public destroySurface()V
    .locals 5

    .prologue
    .line 1010
    const-string v0, "EglHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySurface()  tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 1013
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1016
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Landroid/opengl/GLExternalSurfaceView;->access$500(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1017
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1019
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1023
    const-string v0, "EglHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish() tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mEGLContextFactory:Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;
    invoke-static {v0}, Landroid/opengl/GLExternalSurfaceView;->access$400(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1027
    iput-object v4, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1029
    :cond_0
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1031
    iput-object v4, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1033
    :cond_1
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 847
    const-string v1, "EglHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start() tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 857
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 859
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v2, :cond_0

    .line 860
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglGetDisplay failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 866
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 867
    .local v0, version:[I
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 868
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglInitialize failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 870
    :cond_1
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;
    invoke-static {v1}, Landroid/opengl/GLExternalSurfaceView;->access$300(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;

    move-result-object v1

    iget-object v2, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 876
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->this$0:Landroid/opengl/GLExternalSurfaceView;

    #getter for: Landroid/opengl/GLExternalSurfaceView;->mEGLContextFactory:Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;
    invoke-static {v1}, Landroid/opengl/GLExternalSurfaceView;->access$400(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4}, Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 877
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_3

    .line 878
    :cond_2
    iput-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 879
    const-string v1, "createContext"

    invoke-direct {p0, v1}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 882
    :cond_3
    const-string v1, "EglHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createContext "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iput-object v5, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 886
    return-void
.end method

.method public swap()Z
    .locals 5

    .prologue
    .line 983
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 991
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 992
    .local v0, error:I
    packed-switch v0, :pswitch_data_0

    .line 1002
    :pswitch_0
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 1005
    .end local v0           #error:I
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 994
    .restart local v0       #error:I
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_1

    .line 999
    :pswitch_2
    const-string v1, "EglHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 992
    nop

    :pswitch_data_0
    .packed-switch 0x300b
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
