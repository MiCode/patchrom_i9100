.class Lcom/android/server/location/GpsLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 402
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 405
    const-string v3, "GpsLocationProvider"

    const-string v4, "ALARM_WAKEUP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v4, 0x0

    #calls: Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V
    invoke-static {v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$100(Lcom/android/server/location/GpsLocationProvider;Z)V

    .line 416
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->getVendor()Lcom/android/server/location/GpsLocationProvider$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsLocationProvider$Vendor;->CHN_CMC:Lcom/android/server/location/GpsLocationProvider$Vendor;

    if-ne v3, v4, :cond_1

    .line 417
    const-string v3, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 418
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->setServer(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    .line 428
    :cond_1
    :goto_1
    return-void

    .line 407
    :cond_2
    const-string v3, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 408
    const-string v3, "GpsLocationProvider"

    const-string v4, "ALARM_TIMEOUT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->hibernate()V
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 410
    :cond_3
    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 411
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    .line 412
    :cond_4
    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/android/server/location/GpsLocationProvider;->access$400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    .line 419
    :cond_5
    const-string v3, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;

    move-result-object v4

    const-string v5, "SUPL_HOST"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$602(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 421
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;

    move-result-object v3

    const-string v4, "SUPL_PORT"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, portString:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.AGPS_PROFILE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .local v1, getAgpsProfile:Landroid/content/Intent;
    const-string v3, "ServerAddr"

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const-string v3, "ServerPort"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
