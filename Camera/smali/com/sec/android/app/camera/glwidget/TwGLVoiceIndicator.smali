.class public Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLVoiceIndicator.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLVoiceIndicator"

.field public static final VOICE_FAIL:I = 0x1

.field public static final VOICE_STANDBY:I


# instance fields
.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 4
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 20
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->mTimer:Ljava/util/Timer;

    .line 25
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020045

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 26
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020044

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 28
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 29
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method private cancelVoiceStandBy()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->mTimer:Ljava/util/Timer;

    .line 77
    :cond_0
    return-void
.end method

.method private setVoiceStandBy()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->cancelVoiceStandBy()V

    .line 62
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->mTimer:Ljava/util/Timer;

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 69
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->cancelVoiceStandBy()V

    .line 82
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 83
    return-void
.end method

.method public setVoiceStatus(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 34
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    :try_start_0
    const-string v0, "TwGLVoiceIndicator"

    const-string v1, "setVoiceState = VOICE_STANDBY"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0

    .line 46
    :pswitch_1
    const-string v0, "TwGLVoiceIndicator"

    const-string v1, "setVoiceState = VOICE_FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->setVoiceStandBy()V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVoiceIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
