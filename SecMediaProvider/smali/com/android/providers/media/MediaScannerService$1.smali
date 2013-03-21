.class Lcom/android/providers/media/MediaScannerService$1;
.super Landroid/media/IMediaScannerService$Stub;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$1;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/media/IMediaScannerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 217
    const-string v1, "filepath"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    if-eqz p3, :cond_0

    .line 220
    const-string v1, "listener"

    invoke-interface {p3}, Landroid/media/IMediaScannerListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/providers/media/MediaScannerService$1;->this$0:Lcom/android/providers/media/MediaScannerService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/providers/media/MediaScannerService$1;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-class v4, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/providers/media/MediaScannerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 224
    return-void
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/providers/media/MediaScannerService$1;->requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V

    .line 228
    return-void
.end method
