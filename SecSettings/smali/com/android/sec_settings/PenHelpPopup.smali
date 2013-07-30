.class public Lcom/android/sec_settings/PenHelpPopup;
.super Landroid/app/Activity;
.source "PenHelpPopup.java"


# instance fields
.field private mName:Landroid/content/ComponentName;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/PenHelpPopup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/sec_settings/PenHelpPopup;->closePopup()V

    return-void
.end method

.method private closePopup()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/sec_settings/PenHelpPopup;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/sec_settings/PenHelpPopup;->mName:Landroid/content/ComponentName;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 71
    invoke-virtual {p0}, Lcom/android/sec_settings/PenHelpPopup;->finish()V

    .line 72
    return-void
.end method

.method public static isKeyStringBlocked()Z
    .locals 5

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, imeiBlocked:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/imei/keystr"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    :goto_0
    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const-string v2, "PenHelpPopup"

    const-string v3, "imeiBlocked contains \'ON\'"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v2, 0x1

    .line 102
    :goto_1
    return v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e1:Ljava/io/IOException;
    const-string v1, "OFF"

    .line 95
    const-string v2, "PenHelpPopup"

    const-string v3, "cannot open file : /efs/imei/keystr "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    .end local v0           #e1:Ljava/io/IOException;
    :cond_0
    const-string v2, "PenHelpPopup"

    const-string v3, "imeiBlocked does not contain \'ON\'"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public isFactoryMode()Z
    .locals 6

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, isFactoryMode:Z
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/PenHelpPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 109
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, rilIMSI:Ljava/lang/String;
    const-string v3, "99999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 112
    const-string v3, "PenHelpPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFactoryMode == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/sec_settings/PenHelpPopup;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/PenHelpPopup;->mPm:Landroid/content/pm/PackageManager;

    .line 46
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/sec_settings/PenHelpPopup;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/sec_settings/PenHelpPopup;->mName:Landroid/content/ComponentName;

    .line 49
    const-string v0, "PenHelpPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isKeyStringBlocked() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/sec_settings/PenHelpPopup;->isKeyStringBlocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v0, "PenHelpPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFactoryMode() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/sec_settings/PenHelpPopup;->isFactoryMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/android/sec_settings/PenHelpPopup;->isKeyStringBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/sec_settings/PenHelpPopup;->isFactoryMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/android/sec_settings/PenHelpPopup;->closePopup()V

    .line 56
    :cond_1
    const v0, 0x7f0400a0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/PenHelpPopup;->setContentView(I)V

    .line 58
    const v0, 0x7f0b01a8

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/PenHelpPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    new-instance v1, Lcom/android/sec_settings/PenHelpPopup$1;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/PenHelpPopup$1;-><init>(Lcom/android/sec_settings/PenHelpPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 77
    const-string v0, "PenHelpPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/android/sec_settings/PenHelpPopup;->closePopup()V

    .line 81
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
