.class public Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLGPSIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;
    }
.end annotation


# static fields
.field public static final GPS_CONNECTED:I = 0x0

.field public static final GPS_CONNECTING:I = 0x2

.field private static final GPS_CONNECTING_CNT:I = 0x2

.field public static final GPS_DISCONNECTED:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "TwGLGPSIndicator"


# instance fields
.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 5
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    .line 43
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f02003f

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 44
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f02003e

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 45
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f02003c

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 46
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f02003d

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 48
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 49
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method private StartGPSAnimation()V
    .locals 6

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->StopGPSAnimation()V

    .line 97
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x384

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 99
    return-void
.end method

.method private StopGPSAnimation()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->mTimer:Ljava/util/Timer;

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->StopGPSAnimation()V

    .line 112
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 113
    return-void
.end method

.method public setGPS(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x4

    .line 54
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->StopGPSAnimation()V

    .line 61
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    const-string v1, "TwGLGPSIndicator"

    const-string v2, "setGPS = GPS_CONNECT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x2

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 67
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 70
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 88
    .end local v0           #i:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 73
    :pswitch_1
    const-string v1, "TwGLGPSIndicator"

    const-string v2, "setGPS = GPS_DISCONNECT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x2

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v4, :cond_3

    .line 76
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 78
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 82
    .end local v0           #i:I
    :pswitch_2
    const-string v1, "TwGLGPSIndicator"

    const-string v2, "setGPS = GPS_CONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->StartGPSAnimation()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
