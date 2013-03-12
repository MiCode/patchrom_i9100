.class Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$1;
.super Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService$Stub;
.source "ScreenCaptureRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;


# direct methods
.method constructor <init>(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$1;->this$0:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;

    invoke-direct {p0}, Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public GetFrame()Lcom/samsung/ScreenCapture/CaptureImg;
    .locals 3

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, ret:Lcom/samsung/ScreenCapture/CaptureImg;
    invoke-static {}, Lcom/samsung/ScreenCapture/ScreenCaptureNative;->getFrame()[B

    move-result-object v0

    .line 65
    .local v0, framebyte:[B
    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Lcom/samsung/ScreenCapture/CaptureImg;

    .end local v1           #ret:Lcom/samsung/ScreenCapture/CaptureImg;
    invoke-direct {v1}, Lcom/samsung/ScreenCapture/CaptureImg;-><init>()V

    .line 67
    .restart local v1       #ret:Lcom/samsung/ScreenCapture/CaptureImg;
    iput-object v0, v1, Lcom/samsung/ScreenCapture/CaptureImg;->data:[B

    .line 68
    array-length v2, v0

    iput v2, v1, Lcom/samsung/ScreenCapture/CaptureImg;->size:I

    .line 69
    const/4 v2, 0x0

    iput v2, v1, Lcom/samsung/ScreenCapture/CaptureImg;->offset:I

    .line 70
    iget-object v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$1;->this$0:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;

    #getter for: Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;->mFrameType:I
    invoke-static {v2}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;->access$000(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;)I

    move-result v2

    iput v2, v1, Lcom/samsung/ScreenCapture/CaptureImg;->imgtype:I

    .line 72
    :cond_0
    return-object v1
.end method
