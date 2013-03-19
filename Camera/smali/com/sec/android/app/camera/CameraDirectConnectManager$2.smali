.class Lcom/sec/android/app/camera/CameraDirectConnectManager$2;
.super Ljava/lang/Object;
.source "CameraDirectConnectManager.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraDirectConnectManager;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraDirectConnectManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraDirectConnectManager;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDirectConnectManager$2;->this$0:Lcom/sec/android/app/camera/CameraDirectConnectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 85
    const-string v1, ""

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraDirectConnectManager$2;->this$0:Lcom/sec/android/app/camera/CameraDirectConnectManager;

    const-string v3, "application/com.sec.android.directconnect"

    #calls: Lcom/sec/android/app/camera/CameraDirectConnectManager;->getMacData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CameraDirectConnectManager;->access$000(Lcom/sec/android/app/camera/CameraDirectConnectManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const-string v1, "CameraDirectConnectManager"

    const-string v2, "NFC event is working"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/camera/Camera;->mDirectConnectManagerCheck:Z

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.directconnect.DIRECTCONNECT_O_START_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.directconnect"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDirectConnectManager$2;->this$0:Lcom/sec/android/app/camera/CameraDirectConnectManager;

    #getter for: Lcom/sec/android/app/camera/CameraDirectConnectManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraDirectConnectManager;->access$100(Lcom/sec/android/app/camera/CameraDirectConnectManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 95
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v1, "CameraDirectConnectManager"

    const-string v2, "NFC event is not working"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
