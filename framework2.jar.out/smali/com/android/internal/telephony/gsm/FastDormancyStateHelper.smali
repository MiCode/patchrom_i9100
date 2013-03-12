.class public Lcom/android/internal/telephony/gsm/FastDormancyStateHelper;
.super Landroid/content/BroadcastReceiver;
.source "FastDormancyStateHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/internal/telephony/gsm/FastDormancyStateHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/FastDormancyStateHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, action:Ljava/lang/String;
    sget-object v14, Lcom/android/internal/telephony/gsm/FastDormancyStateHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive() action="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v14, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 31
    const/4 v7, 0x0

    .line 33
    .local v7, isTetheringUsbOn:Z
    const-string v14, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v10

    .line 35
    .local v10, mUsbRegexs:[Ljava/lang/String;
    const-string v14, "activeArray"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 37
    .local v2, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .local v11, o:Ljava/lang/String;
    move-object v13, v11

    .line 38
    check-cast v13, Ljava/lang/String;

    .line 39
    .local v13, s:Ljava/lang/String;
    move-object v3, v10

    .local v3, arr$:[Ljava/lang/String;
    array-length v9, v3

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v12, v3, v6

    .line 40
    .local v12, regex:Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 41
    const/4 v7, 0x1

    .line 39
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 46
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .end local v11           #o:Ljava/lang/String;
    .end local v12           #regex:Ljava/lang/String;
    .end local v13           #s:Ljava/lang/String;
    :cond_2
    const-string v15, "ril.tethering.usb.active"

    if-eqz v7, :cond_4

    const-string v14, "1"

    :goto_1
    invoke-static {v15, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .end local v2           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #isTetheringUsbOn:Z
    .end local v10           #mUsbRegexs:[Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 46
    .restart local v2       #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #isTetheringUsbOn:Z
    .restart local v10       #mUsbRegexs:[Ljava/lang/String;
    :cond_4
    const-string v14, "0"

    goto :goto_1

    .line 47
    .end local v2           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #isTetheringUsbOn:Z
    .end local v10           #mUsbRegexs:[Ljava/lang/String;
    :cond_5
    const-string v14, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 48
    const/4 v8, 0x0

    .line 50
    .local v8, isTetheringWifiOn:Z
    const-string v14, "wifi_state"

    const/16 v15, 0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 51
    .local v4, currentWifiAPState:I
    const/16 v14, 0xd

    if-ne v4, v14, :cond_6

    .line 52
    const/4 v8, 0x1

    .line 55
    :cond_6
    const-string v15, "ril.tethering.wifi.active"

    if-eqz v8, :cond_7

    const-string v14, "1"

    :goto_3
    invoke-static {v15, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v14, "0"

    goto :goto_3
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method
