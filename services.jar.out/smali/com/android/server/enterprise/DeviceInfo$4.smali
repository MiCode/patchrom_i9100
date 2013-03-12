.class Lcom/android/server/enterprise/DeviceInfo$4;
.super Landroid/telephony/PhoneStateListener;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/DeviceInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 4
    .parameter "state"
    .parameter "networkType"

    .prologue
    const-wide/16 v2, 0x0

    .line 1317
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 1319
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/enterprise/DeviceInfo;->mDataCallConnected:Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->access$1102(Lcom/android/server/enterprise/DeviceInfo;Z)Z

    .line 1331
    :goto_0
    return-void

    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/enterprise/DeviceInfo;->mDataCallConnected:Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->access$1102(Lcom/android/server/enterprise/DeviceInfo;Z)Z

    .line 1327
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #setter for: Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastTime:J
    invoke-static {v0, v2, v3}, Lcom/android/server/enterprise/DeviceInfo;->access$1202(Lcom/android/server/enterprise/DeviceInfo;J)J

    .line 1328
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$4;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #setter for: Lcom/android/server/enterprise/DeviceInfo;->mDataCallLogLastValue:J
    invoke-static {v0, v2, v3}, Lcom/android/server/enterprise/DeviceInfo;->access$1302(Lcom/android/server/enterprise/DeviceInfo;J)J

    goto :goto_0
.end method
