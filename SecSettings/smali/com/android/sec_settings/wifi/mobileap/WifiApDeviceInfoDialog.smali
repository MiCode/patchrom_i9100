.class public Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDeviceInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDevice:Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;)V
    .locals 0
    .parameter "context"
    .parameter "device"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;

    .line 39
    return-void
.end method

.method private convertMilsToHHMMSS(J)Ljava/lang/String;
    .locals 13
    .parameter "time"

    .prologue
    .line 73
    const-wide/16 v8, 0xe10

    div-long v0, p1, v8

    .line 74
    .local v0, hour:J
    const-wide/16 v8, 0xe10

    rem-long v2, p1, v8

    .line 75
    .local v2, hour_rest:J
    const-wide/16 v8, 0x3c

    div-long v4, v2, v8

    .line 76
    .local v4, min:J
    const-wide/16 v8, 0x3c

    rem-long v6, v2, v8

    .line 78
    .local v6, sec:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%02d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 83
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v8, 0x3e8

    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, dateFormat:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040110

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 45
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;->setView(Landroid/view/View;)V

    .line 46
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;->setInverseBackgroundForced(Z)V

    .line 48
    iget-object v4, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v4}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    const v4, 0x7f0b0329

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v5}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->getIp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v4, 0x7f0b032a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v5}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 54
    .local v2, myLocale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    const-string v1, "yyyy/MM/dd HH:mm"

    .line 59
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, connDateTime:Ljava/text/SimpleDateFormat;
    const v4, 0x7f0b032b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/util/Date;

    iget-object v6, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v6}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->getConnectedTime()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v4, 0x7f0b032c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v8

    iget-object v7, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;->mDevice:Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v7}, Lcom/android/sec_settings/wifi/mobileap/WifiApConnectedDevice;->getConnectedTime()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-direct {p0, v5, v6}, Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;->convertMilsToHHMMSS(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0905e3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApDeviceInfoDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 68
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 69
    return-void

    .line 57
    .end local v0           #connDateTime:Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v1, "MM/dd/yyyy HH:mm"

    goto :goto_0
.end method
