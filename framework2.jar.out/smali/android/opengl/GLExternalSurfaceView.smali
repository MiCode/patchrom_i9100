.class public Landroid/opengl/GLExternalSurfaceView;
.super Landroid/view/ExternalSurfaceView;
.source "GLExternalSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/GLExternalSurfaceView$1;,
        Landroid/opengl/GLExternalSurfaceView$GLThreadManager;,
        Landroid/opengl/GLExternalSurfaceView$LogWriter;,
        Landroid/opengl/GLExternalSurfaceView$GLThread;,
        Landroid/opengl/GLExternalSurfaceView$EglHelper;,
        Landroid/opengl/GLExternalSurfaceView$SimpleEGLConfigChooser;,
        Landroid/opengl/GLExternalSurfaceView$ComponentSizeChooser;,
        Landroid/opengl/GLExternalSurfaceView$BaseConfigChooser;,
        Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;,
        Landroid/opengl/GLExternalSurfaceView$DefaultWindowSurfaceFactory;,
        Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;,
        Landroid/opengl/GLExternalSurfaceView$DefaultContextFactory;,
        Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;,
        Landroid/opengl/GLExternalSurfaceView$Renderer;,
        Landroid/opengl/GLExternalSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field private static final LOG_ATTACH_DETACH:Z = true

.field private static final LOG_EGL:Z = true

.field private static final LOG_PAUSE_RESUME:Z = true

.field private static final LOG_RENDERER:Z = true

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = true

.field private static final LOG_THREADS:Z = true

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLExternalSurfaceView"

.field private static final sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

.field private mGLWrapper:Landroid/opengl/GLExternalSurfaceView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1723
    new-instance v0, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;-><init>(Landroid/opengl/GLExternalSurfaceView$1;)V

    sput-object v0, Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/view/ExternalSurfaceView;-><init>(Landroid/content/Context;)V

    .line 1724
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z

    .line 93
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->init()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/ExternalSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1724
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z

    .line 102
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->init()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ExternalSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1724
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z

    .line 107
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->init()V

    .line 108
    return-void
.end method

.method static synthetic access$1000(Landroid/opengl/GLExternalSurfaceView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/opengl/GLExternalSurfaceView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$GLThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    return-object v0
.end method

.method static synthetic access$200(Landroid/opengl/GLExternalSurfaceView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLContextFactory:Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$GLWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLWrapper:Landroid/opengl/GLExternalSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Landroid/opengl/GLExternalSurfaceView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Landroid/opengl/GLExternalSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Landroid/opengl/GLExternalSurfaceView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1598
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 1599
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1602
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/opengl/GLExternalSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 115
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 123
    return-void
.end method


# virtual methods
.method public flipExtDisplayFlag(Z)V
    .locals 0
    .parameter "extFlag"

    .prologue
    .line 1606
    invoke-virtual {p0}, Landroid/opengl/GLExternalSurfaceView;->onPause()V

    .line 1607
    invoke-super {p0, p1}, Landroid/view/ExternalSurfaceView;->flipExtDisplayFlag(Z)V

    .line 1608
    invoke-virtual {p0}, Landroid/opengl/GLExternalSurfaceView;->onResume()V

    .line 1609
    return-void
.end method

.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Landroid/opengl/GLExternalSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 452
    invoke-super {p0}, Landroid/view/ExternalSurfaceView;->onAttachedToWindow()V

    .line 454
    const-string v1, "GLExternalSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttachedToWindow reattach ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/opengl/GLExternalSurfaceView;->mDetached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView;->mDetached:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    if-eqz v1, :cond_2

    .line 457
    const/4 v0, 0x1

    .line 458
    .local v0, renderMode:I
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v1}, Landroid/opengl/GLExternalSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    .line 461
    :cond_0
    new-instance v1, Landroid/opengl/GLExternalSurfaceView$GLThread;

    iget-object v2, p0, Landroid/opengl/GLExternalSurfaceView;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    invoke-direct {v1, p0, v2}, Landroid/opengl/GLExternalSurfaceView$GLThread;-><init>(Landroid/opengl/GLExternalSurfaceView;Landroid/opengl/GLExternalSurfaceView$Renderer;)V

    iput-object v1, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    .line 462
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 463
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v1, v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->setRenderMode(I)V

    .line 465
    :cond_1
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v1}, Landroid/opengl/GLExternalSurfaceView$GLThread;->start()V

    .line 467
    .end local v0           #renderMode:I
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView;->mDetached:Z

    .line 468
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 478
    const-string v0, "GLExternalSurfaceView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->requestExitAndWait()V

    .line 483
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView;->mDetached:Z

    .line 484
    invoke-super {p0}, Landroid/view/ExternalSurfaceView;->onDetachedFromWindow()V

    .line 485
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->onPause()V

    .line 423
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->onResume()V

    .line 434
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 443
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Landroid/opengl/GLExternalSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 444
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->requestRender()V

    .line 388
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .parameter "debugFlags"

    .prologue
    .line 152
    iput p1, p0, Landroid/opengl/GLExternalSurfaceView;->mDebugFlags:I

    .line 153
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    .line 313
    new-instance v0, Landroid/opengl/GLExternalSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/opengl/GLExternalSurfaceView$ComponentSizeChooser;-><init>(Landroid/opengl/GLExternalSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLExternalSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;)V

    .line 315
    return-void
.end method

.method public setEGLConfigChooser(Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;)V
    .locals 0
    .parameter "configChooser"

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->checkRenderThreadState()V

    .line 277
    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;

    .line 278
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .parameter "needDepth"

    .prologue
    .line 295
    new-instance v0, Landroid/opengl/GLExternalSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Landroid/opengl/GLExternalSurfaceView$SimpleEGLConfigChooser;-><init>(Landroid/opengl/GLExternalSurfaceView;Z)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLExternalSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;)V

    .line 296
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 344
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->checkRenderThreadState()V

    .line 345
    iput p1, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLContextClientVersion:I

    .line 346
    return-void
.end method

.method public setEGLContextFactory(Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 245
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->checkRenderThreadState()V

    .line 246
    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLContextFactory:Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;

    .line 247
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 259
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->checkRenderThreadState()V

    .line 260
    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;

    .line 261
    return-void
.end method

.method public setGLWrapper(Landroid/opengl/GLExternalSurfaceView$GLWrapper;)V
    .locals 0
    .parameter "glWrapper"

    .prologue
    .line 139
    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView;->mGLWrapper:Landroid/opengl/GLExternalSurfaceView$GLWrapper;

    .line 140
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .parameter "preserveOnPause"

    .prologue
    .line 182
    iput-boolean p1, p0, Landroid/opengl/GLExternalSurfaceView;->mPreserveEGLContextOnPause:Z

    .line 183
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .parameter "renderMode"

    .prologue
    .line 365
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Landroid/opengl/GLExternalSurfaceView$GLThread;->setRenderMode(I)V

    .line 366
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLExternalSurfaceView$Renderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView;->checkRenderThreadState()V

    .line 220
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroid/opengl/GLExternalSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/opengl/GLExternalSurfaceView$SimpleEGLConfigChooser;-><init>(Landroid/opengl/GLExternalSurfaceView;Z)V

    iput-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLExternalSurfaceView$EGLConfigChooser;

    .line 223
    :cond_0
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLContextFactory:Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 224
    new-instance v0, Landroid/opengl/GLExternalSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Landroid/opengl/GLExternalSurfaceView$DefaultContextFactory;-><init>(Landroid/opengl/GLExternalSurfaceView;Landroid/opengl/GLExternalSurfaceView$1;)V

    iput-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLContextFactory:Landroid/opengl/GLExternalSurfaceView$EGLContextFactory;

    .line 226
    :cond_1
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 227
    new-instance v0, Landroid/opengl/GLExternalSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Landroid/opengl/GLExternalSurfaceView$DefaultWindowSurfaceFactory;-><init>(Landroid/opengl/GLExternalSurfaceView$1;)V

    iput-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLExternalSurfaceView$EGLWindowSurfaceFactory;

    .line 229
    :cond_2
    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    .line 230
    new-instance v0, Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-direct {v0, p0, p1}, Landroid/opengl/GLExternalSurfaceView$GLThread;-><init>(Landroid/opengl/GLExternalSurfaceView;Landroid/opengl/GLExternalSurfaceView$Renderer;)V

    iput-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    .line 231
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->start()V

    .line 232
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 412
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Landroid/opengl/GLExternalSurfaceView$GLThread;->onWindowResize(II)V

    .line 413
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 395
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->surfaceCreated()V

    .line 396
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 404
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->surfaceDestroyed()V

    .line 405
    return-void
.end method
