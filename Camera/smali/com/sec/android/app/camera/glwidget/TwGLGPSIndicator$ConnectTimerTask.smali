.class Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;
.super Ljava/util/TimerTask;
.source "TwGLGPSIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectTimerTask"
.end annotation


# instance fields
.field mCnt:I

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->mCnt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->mCnt:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->mCnt:I

    .line 31
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->mCnt:I

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 35
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator$ConnectTimerTask;->mCnt:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLGPSIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 37
    :cond_1
    return-void
.end method
