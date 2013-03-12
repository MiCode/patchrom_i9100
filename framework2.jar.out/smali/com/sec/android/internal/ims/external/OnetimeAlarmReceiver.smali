.class public Lcom/sec/android/internal/ims/external/OnetimeAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnetimeAlarmReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IMS-OnetimeAlarmReceiver-Java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    const-string v2, "IMS-OnetimeAlarmReceiver-Java"

    const-string v3, "OnetimeAlarmReceiver: Entered"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v2, "com.samsung.ims.framework.tid"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 62
    .local v0, aTid:I
    const-string v2, "IMS-OnetimeAlarmReceiver-Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnetimeAlarmReceiver: The Value of ATid is :::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getImsNative()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v1

    .line 68
    .local v1, mNative:Lcom/sec/android/internal/ims/external/NativeInterface;
    if-nez v1, :cond_0

    .line 70
    const-string v2, "IMS-OnetimeAlarmReceiver-Java"

    const-string v3, "OnetimeAlarmReceiver: mNative is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {v1, v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->alarmExpiryCallback(I)V

    goto :goto_0
.end method
